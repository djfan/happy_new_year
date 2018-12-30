

typeofvar () {

    local type_signature=$(declare -p "$1" 2>/dev/null)

    if [[ "$type_signature" =~ "declare --" ]]; then
        printf "string"
    elif [[ "$type_signature" =~ "declare -a" ]]; then
        printf "array"
    elif [[ "$type_signature" =~ "declare -A" ]]; then
        printf "map"
    else
        printf "none"
    fi

}
