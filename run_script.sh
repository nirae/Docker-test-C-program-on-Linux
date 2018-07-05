#! /bin/sh

#
# Please comment or uncomment the command you need or not
#

# Compile from the directory setted in the Dockerfile or in the run command
# For set the Makefile Directory with run, add :
# 												-e "MAKEFILE_DIR=my_directory"
make -C $MAKEFILE_DIR

# Hunt the leaks and debug with valgrind
# For set the name of the executable with run, add : 
# 													-e "EXE=./my_executable"
#														or
#													-e "EXE=./test/my_executable"
valgrind --tool=memcheck --leak-check=full $EXE

# Open the shell in the container for executing manually some commands
# bash

# If you need another command, just add it here!
