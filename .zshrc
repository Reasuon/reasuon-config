# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ======================================== ↓README↓ ========================================
#
# 1. 以下是 .zshrc 配置，上面是自动生成的配置和废弃配置
# 2. 在配置之前，需要先 clone 插件管理器 antigen，或只下载项目内的 antigen.sh 就够了
# 3. 在配置完成之后，重启终端，进入 zsh，触发 antigen 下载插件，但是插件下载只能下载仓库的源码，引用的子模块不能自动更新，需要下载完之后手动更新
# 4. 如果一直卡在下载界面，可以尝试多开一个终端，如果返回 antigen 有其他线程或进程正在使用，那代表还没下载完，耐心等待即可，如果没有提示该内容或提示其他内容，代表已下载完成
# 5. 插件默认安装在 ~/.antigen，进入 ~/.antigen/bundles，底下就是安装的插件了，而 sorin-ionescu/prezto 的子模块需要手动下载
# 6. cd ~/.antigen/bundles/sorin-ionescu/prezto
# 7. git pull
#   不管提示什么，强制更新即可
# 8. git submodule update --init --recursive
#   因为内容比较多，所以建议在网络环境好的情况下下载，或使用代理，或从其他地方下载完成后迁移到该目录下即可
#
# 插件管理器参考 https://github.com/zsh-users/antigen
#
# 主题和插件参考以下:
# (主题) https://github.com/sorin-ionescu/prezto
# (fzf) https://github.com/Aloxaf/fzf-tab
# (命令提醒) https://github.com/zsh-users/zsh-autosuggestions
# (命令高亮) https://github.com/zsh-users/zsh-syntax-highlighting
#
# 软件参考以下:
# (fzf) https://github.com/junegunn/fzf
# (lsd) https://github.com/Peltoche/lsd
#
# 字体参考以下:(如果没有提前安装字体的话，主题 powerlevel10k 可能会出现显示不全的问题)
# (nerd-fonts) https://github.com/ryanoasis/nerd-fonts
#
# ======================================== ↑README↑ ========================================

# 插件管理器 antigen 配置
# 需要先将插件管理器 clone 到本地
# git clone https://github.com/zsh-users/antigen.git ~/.config/antigen
source ~/.config/antigen/antigen.zsh

# prezto 配置
# 配置皮肤
zstyle ':prezto:module:prompt' theme 'powerlevel10k'
# 加载插件
zstyle ':prezto:load' pmodule \
	'history' \
	'git' \
	'history-substring-search' \
	'prompt'

# 指定仓库 prezto，还能选择 oh-my-zsh
antigen use prezto

# 装载插件
# fzf 插件
antigen bundle Aloxaf/fzf-tab
# 超好用的命令提醒插件
antigen bundle zsh-users/zsh-autosuggestions
# 命令高亮
antigen bundle zsh-users/zsh-syntax-highlighting

# 常用命令
alias ls='lsd --date +"%F %T"'
alias ll='ls -l'
alias la='ls -la'

# 终端颜色设置
# 需要提前安装 ncurses
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# 保存应用
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
