#!/bin/sh
CURRENT_PATH=$(cd $(dirname $0);pwd)

if [ $# == 0 ]; then
    # default contest: ABC
    FOLDER_PATH="${CURRENT_PATH}/ABC"
    mkdir ${FOLDER_PATH}
    # default language: python
    touch "${FOLDER_PATH}/A.ipynb"
    touch "${FOLDER_PATH}/B.ipynb"
    touch "${FOLDER_PATH}/C.ipynb"
    touch "${FOLDER_PATH}/D.ipynb"
elif [ $# == 1 ]; then
    FOLDER_PATH="${CURRENT_PATH}/$1"
    mkdir ${FOLDER_PATH}
    # default language: python
    touch "${FOLDER_PATH}/A.ipynb"
    touch "${FOLDER_PATH}/B.ipynb"
    touch "${FOLDER_PATH}/C.ipynb"
    touch "${FOLDER_PATH}/D.ipynb"
elif [ $# == 2 ]; then
    FOLDER_PATH="${CURRENT_PATH}/$1"
    mkdir ${FOLDER_PATH}
    touch "${FOLDER_PATH}/A.$2"
    touch "${FOLDER_PATH}/B.$2"
    touch "${FOLDER_PATH}/C.$2"
    touch "${FOLDER_PATH}/D.$2"
else
    echo "There are extra arguments in command line"
fi
