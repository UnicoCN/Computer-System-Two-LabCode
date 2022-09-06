VPATH = ../include:../arch/riscv/include
all : print.o
	${GCC} ${CFLAG} -o all print.o
print.o : print.c 
	${GCC} ${CFLAG} -c print.c 
.PHONY : clean
clean:
	rm all print.o
