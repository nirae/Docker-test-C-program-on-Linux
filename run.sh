#! /bin/sh

#
# Docker run command, comment/uncomment the command you need
#

#
# Basic run 
#

# docker run --name c_test -ti --rm -e "EXE=./my_exec" nirae/c_linux_valgrind

#
# Set all the env variables for a special Makefile Directory
#

# docker run --name c_test -ti --rm -e "MAKEFILE_DIR=test" -e "EXE=./test/my_exec" nirae/c_linux_valgrind

#
# Run the container and open the shell for executing
# the commands manualy and not executing the run_script
#

# docker run --name c_test -ti --rm nirae/c_linux_valgrind bash
