fish_config theme choose "Dracula Official"
if status is-interactive
    # Commands to run in interactive sessions can go here
    set --universal fish_greeting ""
    set --universal tide_prompt_add_newline_before "false"
    set --universal tide_left_prompt_items character space context pwd git
    set --universal tide_left_prompt_suffix ''
    set --universal tide_right_prompt_items status cmd_duration jobs virtual_env php go time
    set --universal tide_time_format "%d/%m/%y %T"
    set --universal tide_context_always_display "true"
    set --universal tide_context_color_default "FF79C6"
    set --universal tide_time_color "50FA7B"
    set --universal tide_cmd_duration_color "F1FA8C"
    set --universal tide_pwd_color_dirs "BD93F9"
    set --universal tide_pwd_color_truncated_dirs "BD93F9"
    set --universal tide_pwd_color_anchors "BD93F9"
    set --universal tide_character_color "50FA7B"
    set --universal tide_character_color_failure "FF5555"
    set --universal tide_cmd_duration_icon ""
    set --universal tide_pwn_icon ""
    set -Ux EDITOR nvim
    alias vim="nvim"
    alias cat="batcat"
    alias catp="batcat --plain"
    alias tmux-save="tmux capture-pane -epS - > /home/acin/Documents/tmux/$(date +'%s')-pane-history.txt"

    function tmux-save-name; 
        tmux capture-pane -epS - > /home/acin/Documents/tmux/$argv.txt; 
    end
end