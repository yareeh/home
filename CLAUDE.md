# Personal Dotfiles

Portable shell and tool configurations for syncing across devices. Clone this repo on any new machine and run the install script to get a consistent development environment.

## Quick Start

```bash
git clone <this-repo> ~/git/home
cd ~/git/home
./link_dotfiles.sh
```

This creates symlinks from `dotfiles/` to your home directory (e.g., `dotfiles/zshrc` → `~/.zshrc`).

## What's Included

| File | Purpose |
|------|---------|
| `zshrc` | Shell aliases, Oh-My-Zsh, Antigen plugins, tool init |
| `zprofile` | PATH, environment variables, login shell setup |
| `gitconfig` | Git aliases, SSH signing via 1Password, merge tools |
| `editorconfig` | Consistent indentation across editors |
| `emacs.d/` | Emacs configuration (Aquamacs on macOS) |
| `config/` | XDG configs: gh, mise, 1Password SSH, karabiner |

## Cross-Platform

Primarily macOS, with Linux support via:
- OS detection in shell configs
- Separate `gitconfig-macos` / `gitconfig-linux` for platform-specific tools
- Conditional paths for Homebrew vs system packages

## Key Aliases

- `ec` - Emacs client
- `gi <type>` - Generate .gitignore from gitignore.io
- `depversion <artifact>` - Check Maven artifact versions
- `priva-git` - Switch git to private email

## Editing

Edit files in `dotfiles/` directly - changes apply immediately via symlinks.
