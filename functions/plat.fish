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
    if test -n "$platform" -a "$platform" != "prod"
        set -gx ACTIVESTATE_API_KEY (cat ~/.cache/asplatformtooling/$platform-apikey)
    else
        set -gx ACTIVESTATE_API_KEY (cat ~/.cache/asplatformtooling/prod-apikey)
    end

    # Set the ACTIVESTATE_API_HOST
    if test -n "$platform" -a "$platform" != "prod"
        set -gx ACTIVESTATE_API_HOST $platform.activestate.build
    else
        set -gx ACTIVESTATE_API_HOST platform.activestate.com
    end
end
