source ./functions/format_time.fish

function __pure_command_duration_prompt
    set --local command_duration
    
    # Get command execution duration
    if test -n "$CMD_DURATION"
        set command_duration (_pure_format_time $CMD_DURATION $pure_command_max_exec_time)
    end
    set --local command_duration_color "$pure_color_yellow"

    echo "$command_duration_color$command_duration"
end
