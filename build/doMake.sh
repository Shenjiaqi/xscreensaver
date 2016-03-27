#!/bin/bash

export PATH=$PATH://usr/local/Cellar/gettext/0.19.7/bin/
pixbuf="usr/local/Cellar/gdk-pixbuf/2.32.3/lib/gdk-pixbuf-2.0/2.10.0/loaders/"
gtk_lib="-L/usr/local/Cellar/gtk+/2.24.30/lib/ -L/usr/local/Cellar/gtk+3/3.18.9/lib/ -L/usr/local/Cellar/GDK-Pixbuf/2.32.3/lib/"
gtk_include="-I/usr/local/Cellar/gtk+/2.24.30/include/ -I/usr/local/Cellar/gtk+3/3.18.9/include/ -I/usr/local/Cellar/GDK-Pixbuf/2.32.3/include"
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
../configure CFLAGS="${gtk_include} \
-I/opt/X11/include \
-I/usr/local/Cellar/gdk-pixbuf/2.32.3/include/gdk-pixbuf-2.0/" \
LDFLAGS="${gtk_lib} \
-L/usr/local/Cellar/gettext/0.19.7/lib/ \
-L/usr/local/Cellar/gdk-pixbuf/2.32.3/lib/" \
CPPFLAGS="${gtk_include} \
-I/opt/X11/include \
-I/usr/local/Cellar/gettext/0.19.7/include/ \
-I/usr/local/Cellar/gdk-pixbuf/2.32.3/include/gdk-pixbuf-2.0/"
