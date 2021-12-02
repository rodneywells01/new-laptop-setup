#JAVA Configuraiton
#export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
#export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

# alias java8='export JAVA_HOME=$JAVA_8_HOME'
# alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 11
# java11


alias python="python3"
alias pip="pip3"
# alias octave="/usr/local/octave/3.8.0/bin/octave-cli"

gitopen() {
        url=$(git remote get-url origin)
        open $url
}

# export AWS_ACCESS_KEY_ID=None
# export AWS_SECRET_ACCESS_KEY=None


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

