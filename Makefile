#!/bin/make
develop:
	git checkout develop
	git branch --set-upstream origin/develop
	cd starorf_html; git checkout develop; git branch --set-upstream origin/develop; git pull
	cd stardistancemap_html; git checkout develop; git branch --set-upstream origin/develop; git pull
	cd starx; git checkout develop; git branch --set-upstream origin/develop; git pull
	mkdir -p dist
#	cat .gitmodules  | grep path | awk '{print"cp -r "$$3"/src/* dist"}' | bash - 
	cp -r starorf_html/src/* dist
	cp -r stardistancemap_html/src/* dist
	cp -r starx/src/* dist
	#cp -r starbiochem_html/src/* dist
	## always overlay this over all modules
	cp -R starx/src/* dist

master:
	git checkout master
	git branch --set-upstream origin/master
	cd starorf_html; git checkout master; git branch --set-upstream origin/master; git pull
	cd stardistancemap_html; git checkout master; git branch --set-upstream origin/master; git pull
	cd starx; git checkout master; git branch --set-upstream origin/master; git pull
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
