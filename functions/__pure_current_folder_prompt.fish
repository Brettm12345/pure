function __pure_current_folder_prompt
    set --local current_folder (_pure_parse_current_folder (math $COLUMNS - $argv[1] - 1))
    set --local current_folder_color "$pure_color_blue"

    echo "$current_folder_color$current_folder"
end
