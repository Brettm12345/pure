source $DIRNAME/../functions/command_duration_prompt.fish

set --local EMPTY ''

test "hide command duration when it's zero"
    (
        set CMD_DURATION $EMPTY
        set pure_color_yellow $EMPTY

        __pure_command_duration_prompt
    ) = $EMPTY
end

test "displays command duration when non-zero"
    (
        set CMD_DURATION 6000 # in milliseconds
        set pure_command_max_exec_time 5 # in seconds
        set pure_color_yellow $EMPTY

        __pure_command_duration_prompt
    ) = '6s'
end
