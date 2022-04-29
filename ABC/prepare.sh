#!/bin/sh

if [ $# == 0 ]; then
    # default contest: ABC
    FOLDER_PATH="./ABC"
    mkdir ${FOLDER_PATH}
    # default language: python
    python3 ./create-notebook.py "${FOLDER_PATH}/A"
    python3 ./create-notebook.py "${FOLDER_PATH}/B"
    python3 ./create-notebook.py "${FOLDER_PATH}/C"
    python3 ./create-notebook.py "${FOLDER_PATH}/D"
    python3 ./create-notebook.py "${FOLDER_PATH}/E"
    python3 ./create-notebook.py "${FOLDER_PATH}/F"
elif [ $# == 1 ]; then
    FOLDER_PATH="./$1"
    mkdir ${FOLDER_PATH}
    # default language: python
    python3 ./create-notebook.py "${FOLDER_PATH}/A"
    python3 ./create-notebook.py "${FOLDER_PATH}/B"
    python3 ./create-notebook.py "${FOLDER_PATH}/C"
    python3 ./create-notebook.py "${FOLDER_PATH}/D"
    python3 ./create-notebook.py "${FOLDER_PATH}/E"
    python3 ./create-notebook.py "${FOLDER_PATH}/F"
elif [ $# == 2 ]; then
    FOLDER_PATH="./$1"
    mkdir ${FOLDER_PATH}
    touch "${FOLDER_PATH}/A.$2"
    touch "${FOLDER_PATH}/B.$2"
    touch "${FOLDER_PATH}/C.$2"
    touch "${FOLDER_PATH}/D.$2"
    touch "${FOLDER_PATH}/E.$2"
    touch "${FOLDER_PATH}/F.$2"
else
    echo "There are extra arguments in command line"
fi
