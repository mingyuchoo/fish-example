<p align="center">
  <a href="https://github.com/mingyuchoo/fish-example/blob/main/LICENSE"><img alt="license" src="https://img.shields.io/github/license/mingyuchoo/fish-example"/></a>
  <a href="https://github.com/mingyuchoo/fish-example/issues"><img alt="Issues" src="https://img.shields.io/github/issues/mingyuchoo/fish-example?color=appveyor" /></a>
  <a href="https://github.com/mingyuchoo/fish-example/pulls"><img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/mingyuchoo/fish-example?color=appveyor" /></a>
</p>

# fish-example

## Install fish

```bash
brew install fish
sudo sh -c 'echo /usr/local/bin/fish >> /etc/shells'
chsh -s /usr/local/bin/fish
set -U fish_user_paths /usr/local/bin $fish_user_paths
```

## Edit `~/.config/fish/config.fish`

```bash
set -x LANG en_US.UTF-8

[ -f /usr/local/share/autojump/autojump.fish ];
source /usr/local/share/autojump/autojump.fish
```

## Install Plugins

- <https://github.com/jorgebucaran/fisher>
- <https://github.com/edc/bass>

```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
fisher install IlanCosman/tide@v6
fisher install edc/bass
```
