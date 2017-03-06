main := main/main.cpp
program := iterate_shell
flags := -std=c++14 -g -Wall -Wextra -fsanitize=address -fPIC -I./
lib_name := libshell.so
lib_flags := -shared -fPIC
# Just add another file here when you're done, ending in .o
objs := shell.o

program:library
	clang++ -L./ -lshell ${flags} ${main} -o ${program}

%.o:%.cpp
	clang++ -c ${flags} $<

# Need to have a dependency on things that end with .o to have the
# wildcard pattern go off.
library:${objs}
	clang++ ${lib_flags} ${flags} ${objs} -o ${lib_name}

clean:; @rm -rf ${program} *.dSYM *.o ${lib_name}
