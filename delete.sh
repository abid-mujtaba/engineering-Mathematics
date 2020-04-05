#!/bin/bash

# Delete unnecessary files


# Copy necessary font folders

folders="\
tfm/public/cm \
tfm/public/amsfonts \
tfm/public/mathpazo \
tfm/public/rsfs \
tfm/adobe/palatino \
vf/public/mathpazo \
vf/adobe/palatino \
type1/public/mathpazo \
type1/public/amsfonts/cm \
type1/public/amsfonts/symbols \
type1/urw/palatino \
enc/dvips/base\
"

mkdir /tmp/fonts

for folder in $folders
do
	parent=$(dirname $folder)  # Extract parent folder
	mkdir -p /tmp/fonts/$parent  # Create parent folder in /tmp/fonts

	# Recursively copy folder in to newly created parent
	cp -r /usr/share/texlive/texmf-dist/fonts/$folder /tmp/fonts/$parent/
done

rm -r /usr/share/texlive/texmf-dist/fonts
mv /tmp/fonts /usr/share/texlive/texmf-dist/

echo "FILES DELETED"
