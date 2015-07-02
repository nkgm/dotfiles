# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g C='| wc -l'
alias -g H='| head'
alias -g L="| less"
alias -g N="| /dev/null"
alias -g S='| sort'
alias -g G='| grep' # now you can do: ls foo G something

# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

# Sensible Ag
function gg { ag --hidden --ignore-case "$@" 2>/dev/null }

alias gitbak='zip -r ../${PWD##*/}-$(date "+%Y_%m_%d-%H.%M").zip . --exclude node_modules\*\* bower_components\*\* tmp\*\*'

alias npmcleaninst='rm -rf node_modules && npm cache clean && npm install'


