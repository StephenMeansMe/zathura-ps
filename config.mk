# See LICENSE file for license and copyright information

# paths
PREFIX ?= /usr

# libs
GTK_INC = $(shell pkg-config --cflags gtk+-2.0)
GTK_LIB = $(shell pkg-config --libs gtk+-2.0)

INCS = -I. -I/usr/include ${GTK_INC}
LIBS = -lc ${GTK_LIB} -lspectre

# flags
CFLAGS += -std=c99 -fPIC -pedantic -Wall -Wno-format-zero-length $(INCS)

# cairo
CFLAGS += -DHAVE_CAIRO

# debug
DFLAGS = -g

# compiler
CC ?= gcc
LD ?= ld
