path=(
    /bin
    /usr/bin
    /usr/local/bin
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
alias cdf='cd /Users/miyashita/dotfiles'
alias til='cd ~/playground/til/'
alias ic='imgcat'
alias il='imgls'
alias ec2ls='aws ec2 describe-instances --query "Reservations[*].Instances[0].{Name:Tags[?Key==`Name`].Value,PublicDnsName:PublicDnsName}" --filters "Name=tag:CreatedBy,Values=Y.Miyashita"'
alias vg='vi ~/.gitconfig'
alias vgi='vi .gitignore'
alias ga='git a'
alias gaa='git aa'
alias gcim='git cim'
alias gco='git co'
alias gd='git d'
alias gdc='git dc'
alias gl='git l'
alias gm='git m'
alias gms='git ms'
alias gmt='git mt'
alias gp='git p'
alias gpoh='git poh'
alias grs='git rs'
alias grh='git rh'
alias gs='git s'
alias jn='jupyter notebook'
alias pi='pip install'
alias lc='ls -1 | wc -l'
# aliases from xsh end

PROMPT='[%c]  $ '

x
