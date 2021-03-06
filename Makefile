.PHONY: clean install

prefix = /usr

CFLAGS = -g -W -Wall -std=c11 `sdl2-config --cflags`
LDFLAGS = `sdl2-config --libs` -lfreeimage

TARGET = imv
OBJECTS = main.o

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	$(RM) $(TARGET) $(OBJECTS)

install: $(TARGET)
	install -m 0755 $(TARGET) $(prefix)/bin
