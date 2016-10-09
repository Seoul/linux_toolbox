alias cl='clear'
alias g='git'
alias ctags='ctags --fields=+lS'
alias tm='tmux'
#alias vi='/home/seoul/bin/vi'

# cd related aliases.
alias cd='cd '
shopt -s cdable_vars	# make cd [alias variable] available.

alias sn='screen' 

myscp()
{
    scp $1 usync@10.100.13.242:/home/seoul/sync/
}

syncbuild()
{
    repo sync -c -j8 && cd integrate && source ./setenv.sh && lunchprod $1 && make all && make copybin && make copyqpst
}

syncslpi()
{
    for k in $(ls $1)
    do
#echo "myscp $k"
        scp "$1/$k" usync@10.100.13.242:/home/seoul/sync/slpi_images
    done
}

alias ms='myscp'
