
srcdir = .
top_builddir = ../..

include $(top_builddir)/Makefile.common

TARGET = $(top_builddir)/bin/as2gbmap

all:
	cp $(srcdir)/as2gbmap.py $(TARGET) && chmod +x $(TARGET)

install: all installdirs
	$(INSTALL) $(TARGET) `echo $(DESTDIR)$(bindir)/as2gbmap|sed '$(transform)'`

installdirs:
	$(INSTALL) -d $(DESTDIR)$(bindir)

uninstall:
	rm -rf `echo $(DESTDIR)$(bindir)/as2gbmap|sed '$(transform)'`

include $(srcdir)/clean.mk
