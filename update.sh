#!/bin/bash

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key "thimmareddyrajeev@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "thimmareddyrajeev@gmail.com" --clearsign -o - Release > InRelease

echo "deb https://rajeev-t.github.io/packages ./" > rajeevs_packages.list
