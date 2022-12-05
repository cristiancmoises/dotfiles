starship init fish | source
alias openshot="flatpak run org.openshot.OpenShot"
alias del="shred -uv"
alias rm="rm -rf"
alias clean="linux_czkawka_gui.AppImage"
alias bleach="bleachbit"
    # This shows up as USER@HOST /home/user/ >, with the directory colo>
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
function f
    fff $argv
    set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
    cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

function fish_prompt --description 'Write out the prompt'
        set laststatus $status
    printf '%s%s%s%s%s%s%s%s%s%s%s%s%s' (set_color -o white) '❰' (set_c>
    if test $laststatus -eq 0
        printf "%s✔%s≻%s " (set_color -o green) (set_color white) (set_>
    else
        printf "%s✘%s≻%s " (set_color -o red) (set_color white) (set_co>
    end
    printf "\n>"
end

