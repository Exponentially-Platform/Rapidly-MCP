#!/usr/bin/env bash
# Build the ZIP that OpenAI's plugin submission portal accepts from plugins/rapidly.
# Usage: scripts/package-openai-plugin.sh [output-dir] [review-json]
# The ZIP holds the package root (plugin.json, mcp.json, skills/, assets/) with no
# reviewer credentials; those go in the portal's private fields.
#
# review-json, if given, is merged into plugin.json's com.openai block: the reviewer test
# cases, demo link and release notes OpenAI imports with the ZIP. This repo is public, so
# that file is kept in the private launch notes, not here.
#
# OpenAI only accepts a new version of the published plugin when the ZIP keeps that plugin's
# identity and connection, so the ZIP's copies differ from the repo's in two ways:
# - plugin.json's name is the published package name. The repo keeps "rapidly", the name
#   Claude Code and Codex install it by (/plugin install rapidly@rapidly).
# - mcp.json has no com.openai auth block, so the published app keeps its existing,
#   authorized MCP connection (OpenAI refuses an auth override for an app that has one).
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
plugin_dir="$repo_root/plugins/rapidly"
out_dir="${1:-$repo_root/dist}"
review_json="${2:-}"
openai_package_name="app-6a8e5b049a408191aad1429cca54f2cf"

version="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' "$plugin_dir/plugin.json")"
mkdir -p "$out_dir"
out_dir="$(cd "$out_dir" && pwd)"
zip_path="$out_dir/rapidly-plugin-$version.zip"
rm -f "$zip_path"

stage="$(mktemp -d)"
trap 'rm -rf "$stage"' EXIT
cp -R "$plugin_dir/plugin.json" "$plugin_dir/mcp.json" "$plugin_dir/skills" "$plugin_dir/assets" "$stage/"
python3 - "$stage" "$openai_package_name" "$review_json" <<'PY'
import json, sys
stage, name, review_path = sys.argv[1], sys.argv[2], sys.argv[3]

def rewrite(path, change):
    with open(path) as f:
        data = json.load(f)
    change(data)
    with open(path, "w") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
        f.write("\n")

def drop_openai_auth(mcp):
    for server in mcp.get("mcpServers", {}).values():
        openai = server.get("extensions", {}).get("com.openai", {})
        openai.pop("auth", None)
        if not openai:
            server.get("extensions", {}).pop("com.openai", None)
        if not server.get("extensions", True):
            server.pop("extensions")

def openai_fields(plugin):
    plugin["name"] = name
    if review_path:
        with open(review_path) as f:
            plugin["extensions"]["com.openai"].update(json.load(f))

rewrite(f"{stage}/plugin.json", openai_fields)
rewrite(f"{stage}/mcp.json", drop_openai_auth)
PY

(cd "$stage" && zip -qr "$zip_path" plugin.json mcp.json skills assets -x '*.DS_Store')

echo "$zip_path"
unzip -l "$zip_path"
