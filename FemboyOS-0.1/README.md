# FemboyOS 0.1

Первый прототип собственного Arch + KDE Plasma дистрибутива.

## Что уже есть
- KDE Plasma
- SDDM
- Firefox, Dolphin, Konsole, Kate, Gwenview, Ark
- Fastfetch
- Русские/английские шрифты
- FemboyOS цветовая схема
- собственные обои
- собственный экран входа SDDM
- базовый брендинг и shell prompt

## Сборка ISO

Сборка выполняется в Arch Linux/WSL2, не в обычном PowerShell Windows.

```bash
sudo pacman -S --needed archiso
cd ~/FemboyOS-0.1
sudo ./build.sh
```

Готовая ISO появится в `output/`.

Следующий этап:
1. собственный набор SVG-иконок;
2. полноценный KDE Plasma theme;
3. собственные курсоры;
4. красивый boot splash;
5. графический установщик;
6. собственный репозиторий и обновления;
7. проверка ISO в VirtualBox/VMware.
