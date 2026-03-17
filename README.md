# dotfiles

使用 [chezmoi](https://github.com/twpayne/chezmoi) 管理的个人配置文件。

## 管理的文件

| 文件 | 说明 |
|------|------|
| ~/.zshrc | Zsh 配置（Oh My Zsh + cloud 主题） |
| ~/.gitconfig | Git 配置 + 常用 alias |
| ~/.config/ghostty/config | Ghostty 终端配置（iTerm2 Dark 配色 + 毛玻璃） |

## 自动化脚本

| 脚本 | 触发方式 | 说明 |
|------|----------|------|
| run_once_01-install-homebrew.sh | 首次 | 安装 Homebrew |
| run_once_02-install-oh-my-zsh.sh | 首次 | 安装 Oh My Zsh |
| run_onchange_03-install-packages.sh.tmpl | Brewfile 变更时 | 通过 Brewfile 安装所有包 |
| run_once_04-setup-dev.sh | 首次 | 初始化开发环境（Go/Node/Python/Git LFS） |

## 新机器恢复

```bash
# 一步到位
brew install chezmoi && chezmoi init --apply git@github.com:pluto/dotfiles.git
```

或分步执行：

```bash
brew install chezmoi
chezmoi init git@github.com:pluto/dotfiles.git
chezmoi diff
chezmoi apply
```

## 日常使用

```bash
# 修改配置后，同步到 chezmoi 仓库
dot re-add

# 预览差异
dot diff

# 一键同步并推送到 GitHub
dotpush

# 从 GitHub 拉取最新配置并应用
dot update
```

## 别名

已在 `.zshrc` 中配置：

| 别名 | 命令 | 说明 |
|------|------|------|
| `dot` | `chezmoi` | chezmoi 缩写 |
| `dotpush` | re-add + commit + push | 一键同步到 GitHub |
