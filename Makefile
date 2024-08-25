CC = cc
CFLAGS = -Wall -Wextra -g -pedantic -std=c99 -Wno-unused-result
SRCS = *.c
OBJS = *.o
TARGET = kilo

all: $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(OBJS) $(TARGET)
