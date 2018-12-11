source $DIRNAME/../functions/_pure_parse_current_folder.fish

set --local EMPTY ''

test "returns current directory"
    (
        _pure_parse_current_folder
    ) = $PWD
end

test 'replaces $HOME by ~'
    (
        pushd $HOME

        _pure_parse_current_folder
        popd
    ) = '~'
end

test 'shortens directory in prompt'
    (
        string length (_pure_parse_current_folder 1)
    ) -lt (string length $PWD)
end
