function as-jwt
    state-svc stop  >/dev/null 2>&1
    state auth --prompt >/dev/null 2>&1

    echo "Putting AS JWT on clipboard" and into '$AS_JWT'

    set AS_JWT (state export jwt 2>&1 | awk '/Exporting Credentials/ {found=1; next} found==1 {found++; next} found==2 {print "{\"Authorization\": \"Bearer "$0"\"}"; exit}')
    echo $AS_JWT | xclip -in -selection clipboard
end
