
CC = gcc

CFLAGS = -Os -Werror -Wall -Wextra

LDFLAGS = -lform -lncursesw
#LDFLAGS=-fPIE -static # for static linking with [sabotage-linux/netbsd-curses]


SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)


BIN=tpl
.o:
	$(CC) $(CFLAGS) -c $(SRCS)

tpl: .o
	$(CC) $(CFLAGS) $(OBJS) -o $(BIN) $(LDFLAGS)

clean:
	rm -f $(BIN) $(OBJS)
