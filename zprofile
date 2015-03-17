case $TERM in
    screen-256color*)
        precmd () {print -Pn "\e]0;$(basename $PWD)\a"}
        ;;
esac
