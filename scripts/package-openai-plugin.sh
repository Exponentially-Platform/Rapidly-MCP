#!/usr/bin/env bash
# Build the ZIP that OpenAI's plugin submission portal accepts from plugins/rapidly.
# Usage: scripts/package-openai-plugin.sh [output-dir]
# The ZIP holds the package root (plugin.json, mcp.json, skills/, assets/) with no
# reviewer credentials; those go in the portal's private fields.
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
plugin_dir="$repo_root/plugins/rapidly"
out_dir="${1:-$repo_root/dist}"

version="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["version"])' "$plugin_dir/plugin.json")"
mkdir -p "$out_dir"
zip_path="$out_dir/rapidly-plugin-$version.zip"
rm -f "$zip_path"

(cd "$plugin_dir" && zip -qr "$zip_path" plugin.json mcp.json skills assets -x '*.DS_Store')

echo "$zip_path"
unzip -l "$zip_path"
