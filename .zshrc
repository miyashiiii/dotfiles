# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PYENV_ROOT="$HOME/.pyenv"
export DIFF_TOOL="charm"

path=(
    /snap/bin
    $PYENV_ROOT/bin
    /usr/sbin
    /usr/local/bin
    /usr/bin
    /bin
    ~/.nodebrew/current/bin
    /usr/local/octave/3.8.0/bin
    ~/.npm-global/bin
)

# aliases from xsh start
alias vx='vi ~/.xonshrc'
alias vv='vi ~/.vimrc'
alias vz='vi ~/.zshrc'
alias la='ls -a'
alias ll='ls -la'
alias sss='aws s3'
alias ssh='ssh -i ~/.ssh/miya-work.pem -L 6008:localhost:6006'
alias ssh2='ssh -i ~/.ssh/miya-work.pem -L 6009:localhost:6006'
alias scp='scp -i ~/.ssh/miya-work.pem'
alias cdf='cd ~/dotfiles'
alias ic='imgcat'
alias il='imgls'
alias ec2ls='aws ec2 describe-instances --query "Reservations[*].Instances[0].{Name:Tags[?Key==`Name`].Value,PublicDnsName:PublicDnsName}" --filters "Name=tag:CreatedBy,Values=Y.Miyashita"'
alias vg='vi ~/.gitconfig'
alias vgi='vi .gitignore'
alias g='git'
alias ga='git a'
alias gaa='git aa'
alias galias='git alias'
alias gb='git b'
alias gbdel='git bdel'
alias gbr='git br'
alias gca='git ca'
alias gcam='git cam'
alias gci='git ci'
alias gcim='git cim'
alias gco='git co'
alias gcob='git cob'
alias gd='git d'
alias gdc='git dc'
alias gdi='git di'
alias gdic='git dic'
alias gf='git f'
alias gfo='git fo'
alias gfs='git fs'
alias gfu='git fu'
alias gignore='git ignore'
alias ginfo='git info'
alias gl='git l'
alias gm='git m'
alias gms='git ms'
alias gmt='git mt'
alias gp='git p'
alias gpl='git pl'
alias gpoh='git poh'
alias grh='git rh'
alias grs='git rs'
alias gs='git s'
alias gst='git st'
alias gsu='git su'
alias rsv='rails server'
alias rts='rails test'
alias jn='jupyter notebook'
alias pi='pip install'
alias lc='ls -1 | wc -l'
alias x='xonsh'
# aliases from xsh end

source ~/.zsh_alias
alias sz="source ~/.zshrc"

setopt auto_cd
function chpwd() { ls }

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

PROMPT='[%~] %{${vcs_info_msg_0_}%} $ '

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
