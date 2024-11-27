function bigrig
    set INGREDIENT $argv[2]
    set VERSION $argv[3]
    ingredient upload-multi-wheel -s language/python -n $INGREDIENT -v $VERSION
end
