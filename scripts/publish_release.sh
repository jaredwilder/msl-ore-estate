#!/usr/bin/env bash
set -euo pipefail
archive="${1:?archive path required}"
tag="${2:-pass6-orev1-2026-09-02}"
expected="2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc"
actual="$(sha256sum "$archive" | awk '{print $1}')"
[[ "$actual" == "$expected" ]] || { echo "SHA256 mismatch: $actual" >&2; exit 1; }
gh release create "$tag" "$archive" --repo jaredwilder/msl-ore-estate --title "$tag" --notes ""
