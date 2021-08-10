function plat -a platform -d "Display or set the PR"
    if test -n "$platform"
        echo "switching to $platform"
        set -gx AS_PLATFORM $platform
    else
        if test -n "$AS_PLATFORM"
            echo "$AS_PLATFORM"
        else
            echo "prod"
        end
    end
end
