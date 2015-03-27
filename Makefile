TARGET = EasyVolcaSample
LIBS = -lm -framework cocoa -framework AppKit
CC = clang 
CFLAGS = -g -Wall 

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c)) $(patsubst %.m, %.o, $(wildcard *.m))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
				$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
				$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
				-rm -f *.o
				-rm -f $(TARGET)
