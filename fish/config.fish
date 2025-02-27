if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
    . $HOME/export-esp.sh
end

function get_esp
    . $HOME/export-esp.sh
end

# Created by `pipx` on 2024-12-25 11:13:14
set PATH $PATH /home/zeroone/.local/bin
