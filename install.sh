#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing Light Termux Theme..."

mkdir -p ~/.light_theme

curl -s https://raw.githubusercontent.com/light-theme/Theme/refs/heads/main/theme_light.b64 -o ~/.light_theme/data || {
  echo "Download failed"
  exit 1
}

echo 'eval "$(base64 -d ~/.light_theme/data)"' > ~/.bashrc

echo "[✓] Done! Restart Termux."
