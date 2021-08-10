function listshr
       set ING_LIST $argv;
       for ing in {ING_LIST}
           ingredient search -s shared -den $ing 2>/dev/null | grep $ing | awk -F\| '{print $3,$5" --version "$4" "$6}';
       end
end
