
CC = gcc

CFLAGS = -O2 -Werror -Wall -Wextra
DEBUG_CFLAGS = -O0 -Werror -Wall -Wextra -g

LDFLAGS = -lform -lncursesw
#LDFLAGS=-fPIE -static # for static linking with [sabotage-linux/netbsd-curses]


SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)


BIN=tpl
.o:
	$(CC) $(CFLAGS) -c $(SRCS)

tpl: .o
	$(CC) $(CFLAGS) $(OBJS) -o $(BIN) $(LDFLAGS)

debug:
	$(CC) $(DEBUG_CFLAGS) $(SRCS) -o $(BIN) $(LDFLAGS)

clean:
	rm -f $(BIN) $(OBJS)
