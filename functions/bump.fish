function bump
    set NAMESPACE $argv[1]
    set INGREDIENT $argv[2]
    set VERSION $argv[3]
    set JIRA $argv[4]
    inventory-api copy ingredient --src-env $AS_PLATFORM \
        "$NAMESPACE $INGREDIENT $VERSION" $AS_PLATFORM \
        -c "BE-$JIRA-FORCE_REBUILD=$(date --iso-8601=seconds)"
end
