#!/bin/sh
#
# Exports KeyRemap4MacBook settings.

HERE=$(dirname "$0") && HERE=$(cd "$HERE" && pwd -P)

# Export general settings (KeyRemap4MacBook must be open)
sh "$HERE/keyremap4macbook/kr4mb-import.sh"

# Link KeyRemap4MacBook private.xml settings
ln -sfv "$HERE/keyremap4macbook/private.xml" "$HOME/Library/Application Support/KeyRemap4MacBook"

# Copy PCKeyboardHack preferences
cp "$HERE/pckeyboardhack/org.pqrs.PCKeyboardHack.plist" "$HOME/Library/Preferences/org.pqrs.PCKeyboardHack.plist"
