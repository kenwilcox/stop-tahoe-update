#!/usr/bin/env bash
set -euo pipefail
PROFILE="${1:-profiles/deferral-90days.mobileconfig}"

if [[ ! -f "$PROFILE" ]]; then
  echo "Profile not found: $PROFILE" >&2
  exit 1
fi

echo "Installing profile: $PROFILE"
# macOS still ships the `profiles` CLI; use the UI if this fails.
sudo /usr/bin/profiles install -type configuration -path "$PROFILE" \
  || open "$PROFILE"
echo "Done. You may need to open System Settings → Privacy & Security → Profiles to approve."
