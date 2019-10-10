path=(
    /usr/local/bin
    /usr/bin
    /bin
    ~/.nodebrew/current/bin
    /usr/local/octave/3.8.0/bin
    ~/.npm-global/bin
    ~/.gem/ruby/2.0.0/bin
    ~/.pyenv/versions/3.7.4/bin
)

export TERMINAL_APP="" 

source ~/.zsh_alias

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

PROMPT='[%~] %{${vcs_info_msg_0_}%} $ '

x
