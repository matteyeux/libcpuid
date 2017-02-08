#!/bin/bash

srcdir=`dirname $0`
test -z "$srcdir"

cd "$srcdir"

if [[ $(which glibtoolize) ]]; then 
	glibtoolize --force
else
	libtoolize --force
fi

autoreconf --install

if [ -z "$NOCONFIGURE" ]; then
	./configure
fi
