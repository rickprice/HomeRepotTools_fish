function revert
    set NAMESPACE $argv[1]
    set INGREDIENT $argv[2]
    set VERSION $argv[3]
    ingredient load -es $NAMESPACE -n $INGREDIENT -v $VERSION -k1 --skip-editor
end
