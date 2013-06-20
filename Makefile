#!/bin/make

copy:
	mkdir -p dist
#	cat .gitmodules  | grep path | awk '{print"cp -r "$$3"/src/* dist"}' | bash - 
	cp -r starorf_html/src/* dist
	cp -r stardistancemap_html/src/* dist
	cp -r starx/src/* dist
	#cp -r starbiochem_html/src/* dist
	## always overlay this over all modules
	cp -R starx/src/* dist

clean:
	rm -fr dist
