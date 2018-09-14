wget -O /tmp/code.debhttps://go.microsoft.com/fwlink/?LinkID=760868
TEMP_DEB="/tmp/code.deb" && wget -O "$TEMP_DEB" 'https://go.microsoft.com/fwlink/?LinkID=760868' && sudo dpkg --skip-same-version --force-all -i "$TEMP_DEB"
rm -f "$TEMP_DEB"
