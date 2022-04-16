# dotfiles
My personal dotfiles setup.

## Prerequisites
- [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install)
- [ArchWSL](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/)
  - Git (Apart of `sudo pacman -S base-devel`)
  - [Chezmoi](https://www.chezmoi.io)

## Good to know
- Set default shell:  
  `sudo usermod --shell /bin/zsh <username>` or `chsh -s /bin/zsh <username>`
- Set default distro for WSL:  
  `wsl --set-default <distro>`


## Resources
- [Steps for setting up Arch Linux on WSL2](https://gist.github.com/ld100/3376435a4bb62ca0906b0cff9de4f94b)
- [How to Set Up ArchWSL](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/)
- [Profiling zsh shell scripts](https://xebia.com/profiling-zsh-shell-scripts/)
- [Chezmoi install](https://www.chezmoi.io/install/)
- [Chezmoi Quick start](https://www.chezmoi.io/quick-start/)
- [Starship: Cross-Shell Prompt](https://starship.rs)
- [zsh-autosuggestions: Very slow on wsl2](https://github.com/zsh-users/zsh-autosuggestions/issues/548)
- [Change Default Home Directory of User in Linux](https://fedingo.com/how-to-change-default-home-directory-of-user-in-linux/)
