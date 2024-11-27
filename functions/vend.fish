function vend
    set INGREDIENT $argv[1]
    set VERSION $argv[2]
    pws new language/python $INGREDIENT $VERSION
    cd $INGREDIENT-$VERSION
    vendor python rust
    cd ..
end
