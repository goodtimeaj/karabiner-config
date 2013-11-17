#!/bin/bash
#
# Exports KeyRemap4MacBook settings and PCKeyboardHack preferences.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

# Export general settings (KeyRemap4MacBook must be open)
sh "${here}/keyremap4macbook/kr4mb-import.sh"

# Link KeyRemap4MacBook private.xml settings
ln -sfv "${here}/keyremap4macbook/private.xml" "${HOME}/Library/Application Support/KeyRemap4MacBook"

# Copy PCKeyboardHack preferences
cp -v "${here}/pckeyboardhack/org.pqrs.PCKeyboardHack.plist" "${HOME}/Library/Preferences/org.pqrs.PCKeyboardHack.plist"
