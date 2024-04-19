#!/bin/bash

data_file="appimages.dat"

declare -A appimages

save_appimages() {
    for name in "${!appimages[@]}"; do
        printf "%s:%s\n" "$name" "${appimages[$name]}" >> "$data_file"
    done
}

load_appimages() {
    if [ -f "$data_file" ]; then
        while IFS=':' read -r name path; do
            appimages["$name"]="$path"
        done < "$data_file"
    fi
}

add_appimage() {
    clear
    read -p "Enter AppImage path: " path
    read -p "Enter display name: " name
    appimages["$name"]="$path"
    save_appimages
}

list_appimages() {
    clear
    echo "AppImages:"
    for name in "${!appimages[@]}"; do
        echo "$name"
    done
}

run_appimage() {
    clear
    list_appimages
    read -p "Enter the display name of the AppImage to run: " name
    path="${appimages["$name"]}"
    if [ -n "$path" ]; then
        chmod +x "$path" && "$path"
    else
        echo "Invalid AppImage name"
    fi
    read -n 1 -s -r -p "Press any key to continue..."
}

load_appimages

while true; do
    clear
    echo "AppImage Manager"
    echo "1. Add AppImage"
    echo "2. List AppImages"
    echo "3. Run AppImage"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) add_appimage ;;
        2) list_appimages ;;
        3) run_appimage ;;
        4) exit ;;
        *) echo "Invalid choice" ;;
    esac
done
