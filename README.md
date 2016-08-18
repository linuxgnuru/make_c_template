# make_c_template
A simple script that creates a new project for you

Installation:
To run the script, just throw it in a dir in your $PATH, then, run the script. the first arguement is the project/program name, the second optional arguement is any additional libraries you need to add to Makefile

i.e. 

mkct.sh define_test
cd define_test
ls

Makefile define_test.c

or

mkct.sh power m
cd power
ls

Makefile power

(Makefile will now also have -lm)
