# See LICENSE file for license and copyright information

VERSION = 0.1.0

# minimum required zathura version
ZATHURA_MIN_VERSION = 0.1.1
ZATHURA_VERSION_CHECK ?= $(shell pkg-config --atleast-version=$(ZATHURA_MIN_VERSION) zathura; echo $$?)

# paths
PREFIX ?= /usr

# libs
CAIRO_INC ?= $(shell pkg-config --cflags cairo)
CAIRO_LIB ?= $(shell pkg-config --libs cairo)

GLIB_INC ?= $(shell pkg-config --cflags glib-2.0)
GLIB_LIB ?= $(shell pkg-config --libs glib-2.0)

SPECTRE_INC ?= $(shell pkg-config --cflags libspectre)
SPECTRE_LIB ?= $(shell pkg-config --libs libspectre)

GIRARA_INC ?= $(shell pkg-config --cflags girara-gtk2)
GIRARA_LIB ?= $(shell pkg-config --libs girara-gtk2)

ZATHURA_INC ?= $(shell pkg-config --cflags zathura)
PLUGINDIR ?= $(shell pkg-config --variable=plugindir zathura)
PLUGINDIR ?= ${PREFIX}/lib/zathura

INCS = ${GLIB_INC} ${SPECTRE_INC} ${GIRARA_INC} ${ZATHURA_INC}
LIBS = ${GLIB_LIB} ${SPECTRE_LIB} ${GIRARA_LIB}

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
