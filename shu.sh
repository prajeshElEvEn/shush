#!/bin/bash

show_usage() {
    echo "Usage: $0 [-r | -c | -h]"
    echo "Options:"
    echo "  -r   Build and run the code"
    echo "  -c   Clean up the build"
    echo "  -h   Show available commands and their descriptions"
}


if [ $# -eq 0 ] || [ "$1" = "-h" ]; then
    show_usage
    exit 0
fi

case "$1" in
    -r)
        if [ ! -d "build" ]; then
            mkdir build
        fi

        echo "------------------------"
        echo "> building code..."
        sleep 1
        cd build
        cmake ..
        cmake --build .

        echo "> executing code..."
        echo "------------------------"
        sleep 1

        ./code
        ;;
    -c)
        if [ -d "build" ]; then
            rm -rf build
            echo "> removed build. Run $0 -r' to rebuild"
        else
            echo "> build not found"
        fi
        ;;
    *)
        echo "Error: Invalid argument"
        show_usage
        exit 1
        ;;
esac
