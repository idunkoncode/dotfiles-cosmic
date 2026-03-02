function dotpush
    set dotfiles /mnt/Stuffv1.0/System_Setup/dotfiles

    if test (count $argv) -gt 0
        set msg $argv[1]
    else
        set msg "update dotfiles"
    end

    git -C $dotfiles add .
    git -C $dotfiles commit -m $msg
    git -C $dotfiles push github main
    git -C $dotfiles push gitlab main
    git -C $dotfiles push codeberg main
end
