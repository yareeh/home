# Dotfiles Repository

Personal dotfiles for Jari Mäkelä, primarily configured for macOS but with Linux compatibility as a goal.

## Repository Structure

```
/home/jari/git/home/
├── dotfiles/                    # Main configuration files (symlinked to ~)
│   ├── config/                  # XDG config directory contents
│   │   ├── 1Password/ssh/       # 1Password SSH agent config
│   │   ├── gh/                  # GitHub CLI configuration
│   │   ├── husky/               # Git hooks initialization
│   │   └── mise/                # Mise version manager config
│   ├── emacs.d/                 # Emacs configuration
│   ├── editorconfig             # Editor settings
│   ├── gitconfig                # Git configuration
│   ├── gitignore                # Global gitignore
│   ├── octaverc                 # GNU Octave config
│   ├── zprofile                 # Zsh login profile
│   └── zshrc                    # Zsh shell config
├── link_dotfiles.sh             # Installation script
├── startEmacsDaemon.sh          # Emacs daemon launcher
├── clean_docker.sh              # Docker cleanup utility
├── depversion.py                # Maven version checker
├── emu                          # Android emulator launcher
├── my-oh-my.zsh                 # Oh-my-zsh override
└── com.user.loginscript.plist   # macOS LaunchAgent
```

## Installation

Run `./link_dotfiles.sh` to create symlinks from `dotfiles/` to home directory with dot prefix:
- `dotfiles/zshrc` → `~/.zshrc`
- `dotfiles/config/` → `~/.config/`

## Key Tools & Dependencies

- **Shell:** Zsh with Oh-my-zsh and Antigen plugin manager
- **Version managers:** Mise, Pyenv, NVM
- **Editor:** Emacs (Aquamacs on macOS)
- **Git:** Configured with 1Password SSH signing, p4merge as merge tool
- **Environment:** Direnv for directory-based environment variables

## Important Files

- `zshrc` - Main shell configuration with aliases and tool initialization
- `zprofile` - PATH setup and environment variables
- `gitconfig` - Git aliases, signing configuration, and merge tools
- `emacs.d/init.el` - Emacs initialization

## Platform-Specific Notes

### macOS-Specific Elements
- Homebrew paths (`/opt/homebrew/`, `brew --prefix`)
- Application paths (`/Applications/*.app/`)
- LaunchAgent plist for Emacs daemon
- 1Password SSH agent integration
- Aquamacs-specific Emacs configuration

### Linux Considerations
- Use system package manager paths instead of Homebrew
- Replace LaunchAgent with systemd user service
- Use standard Emacs instead of Aquamacs
- Update application paths for Linux conventions

## Aliases

- `ec` - Emacs client
- `gi <type>` - Generate gitignore from gitignore.io
- `astudio` - Launch Android Studio
- `depversion` - Check Maven artifact versions
- `priva-git` - Configure git with private email

## Development

When modifying dotfiles:
1. Edit files in `dotfiles/` directory
2. Changes take effect immediately (symlinked)
3. Test on both macOS and Linux if cross-platform
