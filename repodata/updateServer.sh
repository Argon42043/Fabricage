#!/bin/sh
RepoDir="../Islanded"
NAME=$(jq '.name' manifest.json | tr -d '"')

#
if (screen -list | grep -q ${NAME}); then
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 30 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 10
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 20 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 10
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 10 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 5
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 5 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 1
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 4 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 1
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 3 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 1
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 2 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 1
    screen -S ${NAME} -p 0 -X stuff "tellraw @a {\"text\":\"Serverupdate in 1 seconds\", \"color\":\"red\", \"bold\":true}^M"
    sleep 1
    screen -S ${NAME} -p 0 -X stuff "stop^M"
    sleep 15
fi

rm -rf config/ defaultconfigs/ libraries/ mods/ scripts/ forge* manifest.json minecraft_server.1.16.5.jar startServer.sh
cd ${RepoDir}; make server