# See LICENSE file for license and copyright information

VERSION = 0.0.1

# paths
PREFIX ?= /usr

# libs
GTK_INC ?= $(shell pkg-config --cflags gtk+-2.0)
GTK_LIB ?= $(shell pkg-config --libs gtk+-2.0)

SPECTRE_INC ?= $(shell pkg-config --cflags libspectre)
SPECTRE_LIB ?= $(shell pkg-config --libs libspectre)

GIRARA_INC ?= $(shell pkg-config --cflags girara-gtk2)
ZATHURA_INC ?= $(shell pkg-config --cflags zathura)

INCS = ${GTK_INC} ${SPECTRE_INC} ${ZATHURA_INC} ${GIRARA_INC}
LIBS = ${GTK_LIB} ${SPECTRE_LIB}

# flags
CFLAGS += -std=c99 -fPIC -pedantic -Wall -Wno-format-zero-length $(INCS)

# debug
DFLAGS ?= -g

# build with cairo support?
WITH_CAIRO ?= 1

# compiler
CC ?= gcc
LD ?= ld

# set to something != 0 if you want verbose build output
VERBOSE ?= 0
