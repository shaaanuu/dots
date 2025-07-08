# Dots

My personal dotfiles of _wayland_ **Arch Linux** setup. It includes **Labwc** for the floating window manager and **Sway** for tiling window manager.

Wallpapers can be found at:

- [pixels](labwc/.config/labwc/pixels.png)
- [spiderverse](sway/.config/sway/spiderverse.png)
- [spiderverse2](sddm/usr/share/sddm/themes/spiderverse/backgrounds/spiderverse2.jpg)

## What's inside?

- **Sway** - Tiling window manager
- **labwc** - Floating window manager
- **Alacritty** - Terminal
- **Fastfetch** - Helps to flex
- **Nvim** - Text editor
- **Rofi** - App/program launcher
- **Sddm** - Greeter
- **Waybar** - Top Bar
- **zsh** - With _Oh My Zsh_

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

  ```bash
  sudo stow -t / sddm
  sudo cp -r sddm/usr/share/sddm/themes/spiderverse /usr/share/sddm/themes/
  sudo cp Electroharmonix.otf /usr/share/fonts/OTF/
  fc-cache -fv
    ```

**Disclaimer:** Using `stow` incorrectly can potentially overwrite important system files. Proceed with caution and refer to the `stow` documentation for detailed guidance. And never blame me for any damages...
