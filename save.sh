#!/bin/bash
#
# Saves KeyRemap4MacBook settings and PCKEyboardHack preferences to this
# repository.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

# Save KeyRemap4MacBook preferences
"/Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli" export > "${here}/keyremap4macbook/kr4mb-import.sh"

# Save PCKeyboardHack preferences
cp -v "${HOME}/Library/Preferences/org.pqrs.PCKeyboardHack.plist" "${here}/pckeyboardhack/org.pqrs.PCKeyboardHack.plist"
