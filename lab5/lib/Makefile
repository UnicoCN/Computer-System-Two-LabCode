VPATH = ../include:../arch/riscv/include
all : printk.o
	${GCC} ${CFLAG} -o all printk.o
printk.o : printk.c 
	${GCC} ${CFLAG} -c printk.c 
.PHONY : clean
clean:
	rm all printk.o
