
srcdir = .

top_builddir = ../..

SOURCES = makebin.c
BIN = $(top_builddir)/bin/makebin$(EXEEXT)

include $(top_builddir)/Makefile.common

all: $(BIN)

$(BIN): $(OBJ)
	mkdir -p $(top_builddir)/bin
	$(CC) $(LDFLAGS) -o $(BIN) $(OBJ)

install: all
	mkdir -p $(DESTDIR)$(bindir)
	$(INSTALL) $(BIN) `echo $(DESTDIR)$(bindir)/makebin$(EXEEXT)|sed '$(transform)'`
	$(STRIP) `echo $(DESTDIR)$(bindir)/makebin$(EXEEXT)|sed '$(transform)'`

uninstall:
	rm -f $(DESTDIR)$(bindir)/makebin$(EXEEXT)

include $(srcdir)/clean.mk
