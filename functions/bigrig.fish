function bigrig
    set INGREDIENT $argv[1]
    set VERSION $argv[2]
    ingredient upload-multi-wheel -s language/python -n $INGREDIENT -v $VERSION
end
