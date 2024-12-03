#!/usr/bin/env bash
set -oue pipefail

SDDM_CLONE_DIR='/tmp/simplicity'
SDDM_THEME_DIR='/usr/share/sddm/themes/simplicity/'


if [[ -d "$SDDM_THEME_DIR" ]]; then

  echo "sddm-astronaut-theme is already installed"

else

  sleep 1
  echo "Configuring SDDM..."
  sudo git clone https://gitlab.com/dotsmooth/sddm-simplicity-theme "$SDDM_CLONE_DIR"
  sudo mv "$SDDM_CLONE_DIR"/simplicity "$SDDM_THEME_DIR"

fi

