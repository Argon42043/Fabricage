MAKEFLAGS += --silent

ServerDir = "../IslandedServer"

default:
	echo "Syntax:\n\
	\tmake [client]\n\
	\tmake [server]"

client:
	./repodata/zip.py

server:
#create Server dir
	mkdir -p $(ServerDir)
#downloading forge
	./repodata/downloader.py forge $(ServerDir) repodata/manifest.json
#downloading mods
	mkdir -p $(ServerDir)/mods
	./repodata/downloader.py mods $(ServerDir)/mods/ repodata/manifest.json repodata/exceptManifest.json
#copy overrides and manifest
	cp -r overrides/* $(ServerDir)
	cp -r repodata/manifest.json $(ServerDir)
	cp -r repodata/start.sh $(ServerDir)
#install server
	cd $(ServerDir); java -jar forge-Installer.jar --installServer