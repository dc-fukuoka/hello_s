CC     = gcc
FLAGS  = -nostdlib -static
SRCS   = hello.s
BIN    = a.out

.PHONY: clean

ALL: $(BIN)

$(BIN): $(SRCS)
	$(CC) $(FLAGS) $^ -o $@

clean:
	rm -f *~ $(BIN)
