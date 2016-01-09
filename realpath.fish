function realpath -d "Print absolute path of file"
    if not set -q argv[1]
        pwd
    else
        set -l target $argv[1]
        python -c "import os; print os.path.realpath('$target')"
    end
end
