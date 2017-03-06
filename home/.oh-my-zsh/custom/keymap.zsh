keymap-show-tmux() {
    print "| Key               | Purpose                      |"
    print "| ----------------- | ---------------------------- |"
    print "| ctrl+alt+t        | open new terminal window     |"
    print "| ctrl+b %          | split vertical               |"
    print '| ctrl+b "          | split horizontal             |'
    print "| ctrl+b arrow keys | select split                 |"
    print "| ctrl+b x          | close tab                    |"
    print "| ctrl+b c          | open new tab                 |"
    print "| ctrl+b n          | jump to next tab             |"
    print "| ctrl+b p          | jump to previous tab         |"
    print "| ctrl+b pageUp     | enter scroll mode; quit by q |"
    print "| ctrl+b ?          | display help                 |"
}

keymap-show-vim() {
    print "<leader> is ','"
    print ""
    print "| Key (normal mode) | Purpose                                   |"
    print "| ----------------- | ----------------------------------------- |"
    print "| ctrl+n            | open file explorer                        |"
    print "| ctrl+w (twice)    | jump to next split                        |"
    print "| ctrl+p            | open file finder                          |"
    print "| /                 | enter search; turn off by <leader><space> |"
    print "| :qa               | close all                                 |"
    print "| :u                | undo last step                            |"
    print "| <F12>             | mouse scope toggle: vim vs terminal       |"
}
