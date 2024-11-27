function version_diff
    set NAMESPACE $argv[1]
    set INGREDIENT $argv[2]
    set VERSION1 $argv[3]
    set VERSION2 $argv[4]
    diff -y (ingredient search -es $NAMESPACE -n $INGREDIENT -v $VERSION1 -d --json |psub)  (ingredient search -es $NAMESPACE -n $INGREDIENT -v $VERSION2 -d --json |psub)
end
