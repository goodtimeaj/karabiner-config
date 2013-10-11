#!/usr/bin/env bash
#
# Exports KeyRemap4MacBook settings.

HERE=$(dirname "$0") && HERE=$(cd "$HERE" && pwd -P)

# Export general settings (KeyRemap4MacBook must be open)
sh "$HERE/settings/kr4mb-import.sh"

# Link KeyRemap4MacBook private.xml settings
ln -sfv "$HERE/settings/private.xml" "$HOME/Library/Application Support/KeyRemap4MacBook"
