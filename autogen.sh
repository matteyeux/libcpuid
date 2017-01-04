#!/bin/bash

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

cd "$srcdir"
libtoolize
autoreconf --install

if [ -z "$NOCONFIGURE" ]; then
	./configure
fi
