# Docker test for C program

## Description
A Dockerfile for build a ready linux container for testing a C program with on linux veryquickly.

Made specialy for 42 school or people on Mac OS (Not tested on Windows) who's working on C code and want to compile and test it on linux easily. With this container, you'll be able to test, compile, or use valgrind with your C code.

## Usage

### How it works?

Move the Dockerfile and all the shell scripts on your project directory. The Dockerfile will copy all the files in the linux container and, depending on your choices, compile, use valgrind, or just open a shell.

### Build

Build the image with the shell script **build.sh**

### Run

You can use the **run.sh** script by uncomment the good line or just copy and past the following commands.

**First! What do you want?**

******************************

#### Just access the shell of the container**

If you just want to access the container shell for do your tests manually, uncomment on the run.sh script or copy this command :

`docker run --name c_test -ti --rm nirae/c_linux_valgrind bash`

******************************

#### More

For the others cases, there is two environment variables :

* MAKEFILE_DIR : The directory that contains the Makefile to compile. By default : `.`
* EXE : The path of the executable generate by the Makefile. By default : `.`

You will be set these variables on the docker run command with the option -e "VARIABLE=blabla"

**Please read the run_script.sh comments!**

**Compile and execute my program**

If you want to compile and execute your program on the container, uncomment the make and execute line on the run_script.sh.

**Compile and test with valgrind my program**

If you want to compile and test with valgrind your program, uncomment the make and valgrind line in the run_script.sh. 

After the configuration of the command you need, you can run the container. Uncomment on the run.sh or copy the command :

`docker run --name c_test -ti --rm -e "EXE=./my_exec" -e "MAKEFILE_DIR=test" nirae/c_linux_valgrind`

If the Makefile directory is `.` you don't need to set the MAKEFILE_DIR variable.
