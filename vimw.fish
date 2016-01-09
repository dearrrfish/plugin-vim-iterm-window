function vimw -d "Run Vim in new iTerm window"

    realpath $argv | read -l rp

    set -l filename
    set -l path

    if test -f $rp
        set filename (basename $rp)
        set path (dirname $rp)

    else if test -d $rp
        set filename "."
        set path $rp

    else
        set path (dirname $rp)
        if test -d $path
            set filename (basename $rp)
        end

    end

    if test -z "$filename"
        printf "error: target folder doesn't exist. - `$rp`\n"
        return 1
    end

    printf "\
        on run argv
            tell application \"iTerm\"
                activate
                set newWindow to (create window with profile \"Vim\")
                tell current session of first window
                    write text \"cd %s\"
                    write text \"vim %s\"
                end tell
            end tell
        end run
    " $path $filename | osascript

end

