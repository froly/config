# name: Classic + Vcs
# author: Lily Ballard

function fish_prompt --description 'Write out the prompt'
    set -l normal (set_color normal)

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '➜ '
    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    # If we're running via SSH, change the host color.
    set -l color_host $fish_color_host
    if set -q SSH_TTY
        set color_host $fish_color_host_remote
    end

    # Write pipestatus
    echo -n -s (set_color green) $suffix (set_color $color_host) $normal ' ' (set_color cyan --bold) (prompt_pwd) $normal $normal " "
end
