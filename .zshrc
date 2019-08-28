path=(
    /bin
    /usr/bin
    /usr/local/bin
    ~/.nodebrew/current/bin
    /usr/local/octave/3.8.0/bin
    ~/.npm-global/bin
    ~/.gem/ruby/2.0.0/bin
    ~/.pyenv/versions/3.7.4/bin
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
alias jn='jupyter notebook'
alias pi='pip install'
alias lc='ls -1 | wc -l'
alias x='xonsh'
# aliases from xsh end

PROMPT='[%c]  $ '

x
