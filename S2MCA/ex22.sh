#!/bin/bash

i="y"
read -p "Enter name of database file: " db

if [ ! -f "$db" ]; then
    touch "$db"
fi

while [ "$i" = "y" ] || [ "$i" = "Y" ]
do
    clear
    echo "1. View Database"
    echo "2. View Specific Record"
    echo "3. Add Record"
    echo "4. Delete Record"
    echo "5. Exit"

    read -p "Enter your choice: " ch

    case $ch in
        1)
            echo "----- DATABASE CONTENT -----"
            cat "$db"
            ;;
        2)
            read -p "Enter student ID to search: " id
            echo "----- RECORD FOUND -----"
            grep -i "$id" "$db"
            ;;
        3)
            read -p "Enter new student ID: " tid
            read -p "Enter student name: " nm
            read -p "Enter designation: " des
            read -p "Enter college name: " college
            echo "$tid $nm $des $college" >> "$db"
            echo "Record added successfully."
            ;;
        4)
            read -p "Enter student ID to delete: " id
            grep -v "$id" "$db" > temp_db
            mv temp_db "$db"
            echo "Record deleted successfully."
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac

    read -p "Do you want to continue? (y/n): " i
done