# Dots

My personal dotfiles of _wayland_ **Arch Linux** setup. It includes **Labwc** for the floating window manager and **Sway** for tiling window manager.

Wallpapers can be found at:

- [pixels](labwc/.config/labwc/pixels.png)
- [spiderverse](sway/.config/sway/spiderverse.png)
- [lockscreen](sddm/backgrounds/)

## What's inside?

- **SwayFX** - Tiling window manager
- **labwc** - Floating window manager
- **Alacritty** - Terminal
- **Fastfetch** - Helps to flex
- **Nvim** - Text editor
- **Rofi** - App/program launcher
- **Sddm** - Greeter
- **Waybar** - Top Bar
- **zsh** - With _Oh My Zsh_
- **mako** - Notification daemon
- **nwg-look** - GTK3 settings editor

## Installation

### Prerequisites

_Stow_ to manage the dots

```bash
sudo pacman -S stow
```

### Installing Dotfiles

1.  **Clone this repository:**
    ```bash
    git clone https://github.com/shaaanuu/dots.git
    ```
2.  **Navigate to your dotfiles directory:**
    ```bash
    cd dots
    ```
3.  **Use stow to link configuration files:**
    To install a specific package (e.g., `nvim`), run:

    ```bash
    stow nvim
    ```

    To install multiple packages, separate them with spaces:

    ```bash
    stow nvim sway fastfetch
    ```

### Exceptions

- **SDDM**

    - run the script
        ```bash
        cd sddm/
        ./install.sh
        ```

    - create `/etc/sddm.conf`
    ```conf
    [General]
    InputMethod=qtvirtualkeyboard
    GreeterEnvironment=QML2_IMPORT_PATH=/usr/share/sddm/themes/silent/components/,QT_IM_MODULE=qtvirtualkeyboard

    [Theme]
    Current=silent
    ```

    - create a script
    ```bash
    sudo mkdir -p /usr/share/sddm/scripts
    sudo nano /usr/share/sddm/scripts/wayland-session
    ```

    - put this inside
    ```bash
    #!/bin/sh
    exec "$@"
    ```

    -finally
    ```bash
    sudo chmod +x /usr/share/sddm/scripts/wayland-session
    ```

- **Cursor**
    ```
    sudo stow -t /usr/share/icons cursor
    ```

**Disclaimer:** Using `stow` incorrectly can potentially overwrite important system files. Proceed with caution and refer to the `stow` documentation for detailed guidance. And never blame me for any damages...
