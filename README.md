# Dotfiles

This repository contains my personal configuration files (dotfiles) for various tools and applications. These dotfiles are managed using a bare Git repository.

![Screenshot of my terminal](https://github.com/bobomobo1/dotfiles/blob/master/screenshot.png)

## Setup

To clone and set up these dotfiles on a new machine:

```bash
git clone --bare https://github.com/your-username/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no


