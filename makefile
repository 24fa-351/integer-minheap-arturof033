CC = gcc
CFLAGS = -Wall 
SRCS = heap.c heapTest.c
OBJS = heap.o heapTest.o
TARGET = minheap

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.o: %.c heap.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET) 