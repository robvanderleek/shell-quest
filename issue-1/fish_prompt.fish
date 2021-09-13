function fish_prompt --description 'Informative prompt'
    printf '[%s@shell-quest %s%s%s] $ ' $USER (set_color green) $PWD \
        (set_color normal)
end
