#
#
#

VERSION         = 3.3.1
VERSIONHI       = 3
VERSIONLO       = 3
VERSIONP        = 1

SHELL           = /bin/sh
CC              = gcc
CPP             = gcc -E
INSTALL         = /usr/bin/install -c
STRIP           = strip
MAKEDEP         = gcc -MM

top_builddir    = ../..
top_srcdir      = ../..

srcdir          = .
prefix          = /usr/local
exec_prefix     = ${prefix}
bindir          = ${exec_prefix}/bin
libdir          = ${exec_prefix}/lib
datadir         = ${datarootdir}
datarootdir     = ${prefix}/share
includedir      = ${prefix}/include
mandir          = ${datarootdir}/man
man1dir         = $(mandir)/man1
man2dir         = $(mandir)/man2
infodir         = @info@

EXEEXT          = 



CPPFLAGS        =  -I.. -I$(srcdir)/..
CFLAGS          = -fms-extensions -pipe -ggdb -g -O2 -Wall -Wno-parentheses -DINDEXLIB -DUNIX -I. -I$(srcdir)
LDFLAGS         = 

OBJDIR = obj

ASXXLIB = $(srcdir)/../asxxsrc

ASXXLIBSRC = strcmpi.c

SRC = lk_readnl.c lkaomf51.c lkar.c lkarea.c lkdata.c lkelf.c lkeval.c \
        lkhead.c lklex.c lklib.c lklibr.c lklist.c lkmain.c lkmem.c \
        lknoice.c lkout.c lkrel.c lkrloc.c lkrloc3.c lks19.c lksdcclib.c \
        lksym.c sdld.c lksdcdb.c lkbank.c

LKSOURCES = $(SRC) $(ASXXLIBSRC:%.c=$(ASXXLIB)/%.c)

OBJS = $(SRC:%.c=$(OBJDIR)/%.o)
ASXXLIBOBJS = $(ASXXLIBSRC:%.c=$(OBJDIR)/%.o)
LKOBJECTS = $(OBJS) $(LKOBJS) $(ASXXLIBOBJS)

$(LKOBJECTS) : aslink.h

ASLINK          = $(top_builddir)/bin/sdld$(EXEEXT)

transform       = s,x,x,

# Compiling entire program or any subproject
# ------------------------------------------
all: sdcc-ld8051 sdcc-ldz80 sdcc-ldgb sdcc-ld6808

sdcc-ld8051: checkconf $(ASLINK)

sdcc-ldz80: checkconf $(top_builddir)/bin/sdldz80$(EXEEXT)

sdcc-ldgb: checkconf $(top_builddir)/bin/sdldgb$(EXEEXT)

sdcc-ld6808: checkconf $(top_builddir)/bin/sdld6808$(EXEEXT)

$(top_builddir)/bin/sdldz80$(EXEEXT) $(top_builddir)/bin/sdldgb$(EXEEXT) $(top_builddir)/bin/sdld6808$(EXEEXT): $(ASLINK)
	cp -p $(ASLINK) $@

$(ASLINK): $(LKOBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(LKOBJECTS)

# Compiling and installing everything and running test
# ----------------------------------------------------
install: all installdirs
	for ld in $(ASLINK) $(top_builddir)/bin/sdldz80$(EXEEXT) $(top_builddir)/bin/sdldgb$(EXEEXT) $(top_builddir)/bin/sdld6808$(EXEEXT); \
	do \
	  $(INSTALL) $$ld `echo $(DESTDIR)$(bindir)/\`basename $$ld\` | sed '$(transform)'`; \
	  $(STRIP) `echo $(DESTDIR)$(bindir)/\`basename $$ld\` | sed '$(transform)'`; \
	done

# Deleting all the installed files
# --------------------------------
uninstall:
	for ld in $(ASLINK) $(top_builddir)/bin/sdldz80$(EXEEXT) $(top_builddir)/bin/sdldgb$(EXEEXT) $(top_builddir)/bin/sdld6808$(EXEEXT); \
	do \
	  rm -f $(DESTDIR)$(bindir)/`basename $$ld`; \
	done


# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:
	$(INSTALL) -d $(DESTDIR)$(bindir)


# Creating dependencies
# ---------------------
dep: Makefile.dep

Makefile.dep: $(LKSOURCES) $(top_builddir)/*.h
	$(MAKEDEP) $(CPPFLAGS) $(filter %.c,$^) >Makefile.dep

ifeq "$(findstring $(MAKECMDGOALS),uninstall check installcheck installdirs \
                                   clean distclean mostlyclean realclean)" ""
  -include Makefile.dep
endif
include $(srcdir)/clean.mk

# My rules
# --------
$(OBJDIR)/.stamp:
	mkdir -p $(OBJDIR)
	touch $(OBJDIR)/.stamp

$(OBJDIR)/%.o: %.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<

$(OBJDIR)/%.o: $(ASXXLIB)/%.c $(OBJDIR)/.stamp
	$(CC) -c $(CFLAGS) -o $@ $<


# Remaking configuration
# ----------------------
checkconf:
	@if [ -f $(top_builddir)/devel ]; then\
          $(MAKE) -f ../conf.mk srcdir="$(srcdir)" top_builddir="$(top_builddir)" freshconf;\
        fi

# End of Makefile
