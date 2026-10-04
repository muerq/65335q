# Установка среды сборки FemboyOS в WSL2

# В PowerShell от имени администратора:
wsl --install -d Arch

# После перезагрузки внутри Arch:
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm archiso git
