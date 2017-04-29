keymap-tmux() {
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

keymap-vim() {
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

keymap-phpstorm() {
    print "| Key                    | Purpose                               |"
    print "| ---------------------- | ------------------------------------- |"
    print "| alt+enter              | solve problem / context-aware editing |"
    print "| ctrl+shift+a           | find actions                          |"
    print "| ctrl+b                 | jump to definition                    |"
    print "| ctrl+alt+left OR right | navigate                              |"
    print "| ctrl+shift+v           | open clipboard                        |"
    print "| ctrl+w                 | smart selection                       |"
    print "| ctrl+shit+w            | smart deselection                     |"
    print "| ctrl+F12               | open quick navigation                 |"
    print "| ctrl+k                 | commit project                        |"
}
