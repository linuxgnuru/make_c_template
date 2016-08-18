# make_c_template
A simple script that creates a new project for you

Installation:
mkdir $HOME/.TEMPLATE
chuck the TEMPLATE.c and Makefile there

To run the script, just throw it in a dir in your $PATH, then, run the script. the first arguement is the project/program name, the second optional arguement is any additional libraries you need to add to Makefile

i.e. 

$ mkct.sh define_test
$ cd define_test
$ ls
Makefile define_test.c

