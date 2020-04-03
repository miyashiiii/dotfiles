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
    ~/.gem/ruby/2.0.0/bin
    ~/Library/Android/sdk/platform-tools
)

eval "$(pyenv init -)"

source ~/.zsh_alias
alias sz="source ~/.zshrc"

setopt auto_cd
function chpwd() { ls }

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

PROMPT='[%~] %{${vcs_info_msg_0_}%} $ '

x
