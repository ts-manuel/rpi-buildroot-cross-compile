
#Buildroot host tools directory
HOST=~/Documents/rpi-buildroot-cross-compile/buildroot/output/host

#Enviroment
CC=$(HOST)/bin/arm-buildroot-linux-uclibcgnueabihf-gcc
OBJCOPY=$(HOST)/bin/arm-buildroot-linux-uclibcgnueabihf-objcopy
OBJDUMP=$(HOST)/bin/arm-buildroot-linux-uclibcgnueabihf-objdump
STRIP=$(HOST)/bin/arm-buildroot-linux-uclibcgnueabihf-strip
CFLAGS=-O3

ODIR=obj
SDIR=src
BDIR=bin
TARGET=hello-world


_OBJ = main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


all: $(TARGET)

$(ODIR)/%.o: $(SDIR)/%.s $(DEPS) | obj
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR)/%.o: $(SDIR)/%.c $(DEPS) | obj
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJ) | bin
	$(CC) -o $(BDIR)/$@ $(OBJ) $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o $(BDIR)/*

obj:
	mkdir -p $@

bin:
	mkdir -p $@