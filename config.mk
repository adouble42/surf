# surf version
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

GTKINC = $(shell pkg-config --cflags gtk+-3.0 webkitgtk-3.0)
GTKLIB = $(shell pkg-config --libs gtk+-3.0 webkitgtk-3.0)

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} ${GTKINC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 ${GTKLIB} -lgthread-2.0

# flags
CPPFLAGS += -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE
CFLAGS += -std=c99 -pedantic -Wall

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
