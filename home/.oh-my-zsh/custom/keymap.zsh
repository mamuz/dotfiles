keymap-tmux() {
    if [[ "$OSTYPE" = darwin* ]]; then
        print "| Key                  | Purpose                      |"
        print "| -------------------- | ---------------------------- |"
        print "| command+option+t     | open new terminal window     |"
        print "| command+b %          | split vertical               |"
        print '| command+b "          | split horizontal             |'
        print "| command+b arrow keys | select split                 |"
        print "| command+b x          | close tab                    |"
        print "| command+b c          | open new tab                 |"
        print "| command+b n          | jump to next tab             |"
        print "| command+b p          | jump to previous tab         |"
        print "| command+b pageUp     | enter scroll mode; quit by q |"
        print "| command+b ?          | display help                 |"
    else
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
    fi
}

keymap-vim() {
    if [[ "$OSTYPE" = darwin* ]]; then
        print "<leader> is ','"
        print ""
        print "| Key (normal mode)    | Purpose                                   |"
        print "| -------------------- | ----------------------------------------- |"
        print "| command+n            | open file explorer                        |"
        print "| command+w (twice)    | jump to next split                        |"
        print "| command+p            | open file finder                          |"
        print "| /                    | enter search; turn off by <leader><space> |"
        print "| :qa                  | close all                                 |"
        print "| :u                   | undo last step                            |"
        print "| <F12>                | mouse scope toggle: vim vs terminal       |"
    else
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
    fi
}

keymap-phpstorm() {
    if [[ "$OSTYPE" = darwin* ]]; then
        print "| Key                          | Purpose                               |"
        print "| ---------------------------- | ------------------------------------- |"
        print "| command+shift+a              | find actions                          |"
        print "| ^+space                      | code completion                       |"
        print "| command+option+l             | reformat                              |"
        print "| command+b                    | jump to definition                    |"
        print "| command+option+left OR right | navigate                              |"
        print "| option+enter                 | solve problem / context-aware editing |"
        print "| command+shift+v              | open clipboard                        |"
        print "| option+arrow up              | smart selection                       |"
        print "| option+arrow down            | smart deselection                     |"
        print "| ^+t                          | refactor                              |"
        print "| command+F12                  | open quick navigation                 |"
        print "| shift (double-tapping)       | search everywhere                     |"
        print "| command+k                    | commit project                        |"
    else
        print "| Key                    | Purpose                               |"
        print "| ---------------------- | ------------------------------------- |"
        print "| ctrl+shift+a           | find actions                          |"
        print "| ctrl+space             | code completion                       |"
        print "| ctrl+alt+l             | reformat                              |"
        print "| ctrl+b                 | jump to definition                    |"
        print "| ctrl+alt+left OR right | navigate                              |"
        print "| alt+enter              | solve problem / context-aware editing |"
        print "| ctrl+shift+v           | open clipboard                        |"
        print "| ctrl+w                 | smart selection                       |"
        print "| ctrl+shit+w            | smart deselection                     |"
        print "| ctrl+alt+shift+t       | refactor                              |"
        print "| ctrl+F12               | open quick navigation                 |"
        print "| shift (double-tapping) | search everywhere                     |"
        print "| ctrl+k                 | commit project                        |"
    fi
}
