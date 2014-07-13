#!/bin/sh
# Saves Karabiner settings and Seil preferences to this repository.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

# Save Karabiner preferences
"/Applications/Karabiner.app/Contents/Library/bin/karabiner" export > "${here}/karabiner/karabiner-import.sh"

# Save Seil preferences
cp -v "${HOME}/Library/Preferences/org.pqrs.Seil.plist" "${here}/seil/org.pqrs.Seil.plist"
