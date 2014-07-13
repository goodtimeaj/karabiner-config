#!/bin/sh
# Exports Karabiner settings and Seil preferences.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

# Link Karabiner private.xml settings
ln -sfv "${here}/karabiner/private.xml" "${HOME}/Library/Application Support/Karabiner/private.xml"

# Copy Seil preferences
cp -v "${here}/seil/org.pqrs.Seil.plist" "${HOME}/Library/Preferences/org.pqrs.Seil.plist"

# Export Karabiner settings (Karabiner must be open)
sh "${here}/karabiner/karabiner-import.sh"
