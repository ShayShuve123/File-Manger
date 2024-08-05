#!/bin/bash

create_folder(){
	read -p "Enter folder name: " folder_name
	mkdir -p "$folder_name"
	echo "Folder '$folder_name' created."
}

create_file(){
	read -p "Enter file name: " file_name
	touch "$file_name"
        echo "File '$filename'created."
}
delete_file(){
	read -p "Enter file name to delete: " file_name
	rm -f "$file_name"
	echo "File '$file_name' deleted."
}

delete_folder(){
        read -p "Enter folder name to delete: " folder_name
        rm -rf "$folder_name"
        echo "Folder '$folder_name' created."
}

#Actions menu
echo "Select an option:"
echo "1.Create folder"
echo "2.Create file"
echo "3.Delete folder"
echo "4.Delete file"
read -p "Enter option [1-4]: " option 

case $option in
	1)create_folder;;
	2)create_file;;
        3)delete_file;;
	4)delete_folder;;
	*)echo "Invalid option";;
esac

