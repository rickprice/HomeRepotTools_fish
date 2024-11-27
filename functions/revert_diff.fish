function revert_diff
    set NAMESPACE $argv[1]
    set INGREDIENT $argv[2]
    set VERSION $argv[3]
   diff (ingredient search -es $NAMESPACE -n $INGREDIENT -v $VERSION -d --json -k1 | psub)  (ingredient search -es $NAMESPACE -n $INGREDIENT -v $VERSION -d --json | psub) | egrep 'feature|namespace|patch|option'
end
