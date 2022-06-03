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

    # Set the AS_API_KEY
    if test -n "$platform"
        set -gx AS_API_KEY (cat ~/.cache/asplatformtooling/$platform-apikey)
    else
        set -gx AS_API_KEY (cat ~/.cache/asplatformtooling/prod-apikey)
    end
end
