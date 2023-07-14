
#!/bin/bash
clear
sleep 1
printf "\e[1;77m _____           ___           _               _____ \e[0m\n"
printf "\e[1;77m|  ___|         |_ _|         | |             | ____|\e[0m\n"
printf "\e[1;77m| |_     _____   | |   _____  | |      _____  |  _|  \e[0m\n"
printf "\e[1;77m|  _|   |_____|  | |  |_____| | |___  |_____| | |___ \e[0m\n"
printf "\e[1;77m|_|             |___|         |_____|         |_____|\e[0m\n"
printf "\e[1;77m                  _                 _                \e[0m\n"
printf "\e[1;77m    ___ _   _ ___| |_ ___ _ __ ___ (_)_______ _ __   \e[0m\n"
printf "\e[1;77m   / __| | | / __| __/ _ \ '_ ' _ \| |_  / _ \ '__|  \e[0m\n"
printf "\e[1;77m   \__ \ |_| \__ \ ||  __/ | | | | | |/ /  __/ |     \e[0m\n"
printf "\e[1;77m   |___/\__, |___/\__\___|_| |_| |_|_/___\___|_|     \e[0m\n"
printf "\e[1;77m         |___/                                       \e[0m\n"
printf "\n"
printf "\e[1;77m             Programmed by Anonycodexia              \e[0m\n"
printf "\n"
organize_files() {
    source_dir="$1"

    find "$source_dir" -type f | while read -r file; do
        extension="${file##*.}"
        destination_dir="$source_dir/$extension"
        mkdir -p "$destination_dir"
        mv "$file" "$destination_dir"
    done

    echo "Files organized successfully!"
}
echo "Hello Welcome to file systemizer"
sleep 1
read -p "Enter the path of directory: " source_directory
organize_files "$source_directory"
