function vend
    set INGREDIENT $argv[2]
    set VERSION $argv[3]
    pws new language/python $INGREDIENT $VERSION
    cd $INGREDIENT-$VERSION
    vendor python rust
    cd ..
end
