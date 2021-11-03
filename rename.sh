#!/bin/bash
### all file .jpg ####
find . -type f  ! -name "*.*" -exec mv {} {}.jpg \;

###### mime type add extension #########
for f in * ; do
  if [[ $(file -b --mime-type "$f") = application/pdf ]] ; then
    ##echo $f.jpg 
    mv  $f ../pdf/$f.pdf 
  fi
done
