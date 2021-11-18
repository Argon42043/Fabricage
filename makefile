MAKEFLAGS += --silent

ServerDir = "../MindfactoryServer"
JQ := $(shell which jq > /dev/null; echo $$?)

default:
	echo "Syntax:\n\
	\tmake client\n\
	\tmake server"

client:
	./repodata/zip.py

server:
#download jq
	if [ $(JQ) -eq 1 ]; then\
		sudo apt install jq;\
	fi
#create Server dir
	mkdir -p $(ServerDir)
#downloading forge
	./repodata/downloader.py forge $(ServerDir) repodata/manifest.json
#downloading mods
	mkdir -p $(ServerDir)/mods
	./repodata/downloader.py mods $(ServerDir)/mods/ repodata/manifest.json repodata/exceptManifest.json
#copy overrides and manifest
	rsync -av --progress --exclude="packmenu" overrides/ $(ServerDir)
	cp -r repodata/manifest.json repodata/startServer.sh repodata/updateServer.sh $(ServerDir)
	chmod +x $(ServerDir)/startServer.sh $(ServerDir)/updateServer.sh
#install server
	cd $(ServerDir); java -jar forge-Installer.jar --installServer; ./startServer.sh
#create updater makefile