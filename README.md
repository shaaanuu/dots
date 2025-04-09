## Dotfiles
........................

### Installation

#### Prerequisites
Before installing your dotfiles, ensure you have the `stow` package manager installed.

**Arch based:**

```bash
sudo pacman -S stow
```

**Debian/Ubuntu based:**

```bash
sudo apt install stow
```

#### Installing Dotfiles
1. **Clone this repository:**
   ```bash
   git clone https://github.com/shaaanuu/dots.git
   ```
2. **Navigate to your dotfiles directory:**
   ```bash
   cd dots
   ```
3. **Use stow to link configuration files:**
   To install a specific package (e.g., `nvim`), run:
   ```bash
   stow nvim
   ```
   To install multiple packages, separate them with spaces:
   ```bash
   stow nvim i3 neofetch
   ```

**Disclaimer:** Using `stow` incorrectly can potentially overwrite important system files. Proceed with caution and refer to the `stow` documentation for detailed guidance. And never blame me for any damages...
 
