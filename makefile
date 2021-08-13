MAKEFLAGS += --silent

ServerDir = "../IslandedServer"

default:
	echo "Syntax:\n\
	\tmake [client]\n\
	\tmake [server]"

client:
	./scripts/zip.py

server:
#create Server dir
	mkdir -p $(ServerDir)
#downloading forge
	./scripts/downloader.py forge $(ServerDir) scripts/manifest.json
#downloading mods
	mkdir -p $(ServerDir)/mods
	./scripts/downloader.py mods $(ServerDir)/mods/ scripts/manifest.json scripts/exceptManifest.json
#copy overrides and manifest
	cp -r overrides/* $(ServerDir)
	cp -r scripts/manifest.json $(ServerDir)
	cp -r scripts/start.sh $(ServerDir)
#install server
	cd $(ServerDir); java -jar forge-Installer.jar --installServer