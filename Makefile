CHARMC?=../../../../bin/charmc $(OPTS)

OBJS = hello.o

all: hello

hello: $(OBJS)
	$(CHARMC) -language charm++ -o hello $(OBJS)

hello.decl.h: hello.ci
	$(CHARMC)  hello.ci

clean:
	rm -f *.decl.h *.def.h conv-host *.o hello charmrun

hello.o: hello.C hello.decl.h
	$(CHARMC) -c hello.C


