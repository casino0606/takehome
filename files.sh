# /usr/bin/bash
#
# 

# function that uses tree command to create index.html file. 
index(){
    tree -H '.' -h --noreport --charset utf-8 -o index.html
}

# function that uses find command to find files with the given extension and then uses the cat command to print the contents of the file.
filename(){
    find . -name "*.$ext"
}

# function that uses find command to list files by size. 
filesize(){
    find . -size "$size" -not -path '*/.*' -exec ls -lh {} \;
}

# function that uses find command to list files by name.
name(){
    find . -type f -name "*$name*"
}

# function that creates menu fo user to chose how to list/search for files. 
menu(){
    echo
    echo "========================"
    echo "1. List files by size"
    echo "2. List files by name"
    echo "3. Search for files with a given extension"
    echo "4. Exit"
    echo "Enter your choice: "
    read choice
    case $choice in
        1) echo "Listing files by size"
            echo "Enter file size: "
            read size
            echo
            echo "========================"
            filesize $size
            menu
            ;;
        2) echo "Listing files by name"
            echo "Enter file name: "
            read name
            echo
            echo "========================"
            name $name
            menu
            ;;
        3) echo "Search for files with a given extension"
            echo "Enter file extension: "
            read ext
            echo
            echo "========================"
            filename $ext
            menu
            ;;
        4) echo "Exiting"
            exit 0
            ;;
        *) echo "Invalid choice"
            menu
            ;;
    esac
}
index
menu

