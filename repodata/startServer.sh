#!/bin/sh
NAME=$(jq '.name' manifest.json | tr -d '"')
VERSION=$(jq '.minecraft.version' manifest.json | tr -d '"')
FORGE=$(jq '.minecraft.modLoaders[0].id' manifest.json | tr -d '"forge')
echo ${VERSION}
screen -xR -AmS ${NAME} java -Xmx4096M -Xms4096M -jar forge-${VERSION}${FORGE}.jar nogui