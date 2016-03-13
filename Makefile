CC = gcc
CFLAGS = -Werror -std=gnu99 -Og -g
LDLIBS = -lm -lncurses
C_FILES = $(wildcard src/*.c)
H_FILES = $(wildcard src/*.h)
BUILD = run

.PHONY: all clean

$(BUILD): $(C_FILES) $(H_FILES)
	$(CC) $(CFLAGS) $(C_FILES) -o $@ $(LDLIBS)

all: run

clean:
	rm -f $(BUILD)
