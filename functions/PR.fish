function PR -a platform -d "Login to a PR"
    echo "Creating login for $platform"
    plat $platform
    if  not test -f ~/.cache/asplatformtooling/$platform-apikey
        echo -e "$AS_USER\n" | apikey new;
    end
end
