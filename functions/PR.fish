function PR -a platform -d "Login to a PR"
    echo "Creating login for $platform"
    plat $platform
    if  not test -f ~/.cache/asplatformtooling/$platform-apikey
        echo -e "$AS_USER\n" | apikey new;
    end
    set -x AS_API_KEY (cat ~/.cache/asplatformtooling/$AS_PLATFORM-apikey)
end
