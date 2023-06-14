
CC=cl
#CC=x86_64-pc-mingw32-gcc

CFLAGS=-DNDEBUG -DWIN32 -D_CONSOLE -DTELNET -DGAPING_SECURITY_HOLE -Od -Z7
LDFLAGS=/link -s -lkernel32 -luser32 -lwsock32 -lwinmm /DEBUG

all: nc.exe

nc.exe: getopt.c doexec.c netcat.c
	$(CC) $(CFLAGS) getopt.c doexec.c netcat.c -o nc.exe $(LDFLAGS)

clean:
	del nc.exe
