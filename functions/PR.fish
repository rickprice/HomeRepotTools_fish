function PR -a platform -d "Login to a PR"
    echo "Creating login for $platform"
    plat $platform
    echo -e "$AS_USER\n" | apikey new;
end
