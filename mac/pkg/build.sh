rm -rf dist
rm -rf expanded
pkgutil --expand python-3.5.2-macosx10.6.pkg expanded
mkdir dist
for pkg in expanded/*.pkg
do
	pkgutil --flatten $pkg dist/$(basename $pkg)
done
pkgbuild --identifier moesg.pythonpackages --root ../root --scripts ../scripts --install-location /tmp dist/pythonpackages.pkg
productbuild --distribution pythonpackages.dist --package-path dist --resources expanded/Resources python-custom.pkg
