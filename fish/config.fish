# Disable greeting
set -U fish_greeting ""
# Aliases
alias p0 "cd /mnt/c/users/User/projects/rewardbux/rb-funnel"
alias p1 "cd /mnt/c/users/User/projects/ci/1/handyman-jacek"
alias py "python3"
alias pip "pipenv install"
alias pipg "python3 -m pip install"

if status is-interactive
    and not set -q TMUX
    # Start tmux
    exec tmux

    # Setup powerline
    set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
    source /usr/share/powerline/bindings/fish/powerline-setup.fish
    powerline-setup

    # Enable Vi Mode
    fish_vi_key_bindings

end
