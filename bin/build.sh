#!/bin/bash

xmllint --noout src/*.xml
if [ "$?" != "0" ]; then
    exit $?
fi
if [ ! -d dist ] ; then
    mkdir dist
fi
cd src
echo "$(date) $(hostname) creating zipfile."
zip -9 -r ../dist/FS22_Impress185VCAoiEdition.zip .
