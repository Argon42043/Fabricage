#!/usr/bin/env python3
from sys import path
import requests
import json
import os

#downloadToDir:         path to server folder
#manifestPath:          path to main manifest
def forgeInstallerDownloader(downloadToDir, manifestPath):

    headers = {'User-Agent': 'forgeInstallerDownloader'}

    #Read manifest.json
    try:
        m = open(manifestPath, 'r')
        manifest = json.load(m)
        m.close()
    except:
        print('manifest cant be accessed or does not exist')
        exit()

    #Get forge and minecraft version from manifest
    try:
        minecraftVersion = manifest['minecraft']['version']
        forgeVersion = manifest['minecraft']['modLoaders'][0]['id']
        forgeVersion = forgeVersion.replace("forge-","")
    except:
        print('forge or minecraft version cant be read from manifest')
        exit()
    
    try:
    #download forge data
        forgeData = requests.get('https://maven.minecraftforge.net/net/minecraftforge/forge/' + minecraftVersion + '-' + forgeVersion + '/forge-' + minecraftVersion + '-' + forgeVersion + '-installer.jar')
    except:
        print('forge version cant be downloaded')
        exit()

    #save forge data to file
    try:
        f = open(downloadToDir + 'forge-Installer.jar', 'wb')
        f.write(forgeData.content)
        f.close()
    except:
        print('forge.jar cant be created')
        exit()


#downloadToDir:         path to mod folder
#manifestPath:          path to main manifest
#exceptManifestPath:    path to manifest of mods that shouldn't be included
def modDownloader(downloadToDir, manifestPath, exceptManifestPath = None):

    headers = {'User-Agent': 'modDownloader'}

    #Read manifest
    try:
        m = open(manifestPath, 'r')
        manifest = json.load(m)
        m.close()
    except:
        print('manifest cant be accessed or does not exist')
        exit()

    #Read exceptManifest
    if exceptManifestPath != None:
        try:
            m = open(exceptManifestPath, 'r')
            exceptManifest = json.load(m)
            m.close()
        except:
            print('except-manifest cant be accessed or does not exist')
            exit()
        #copy exceptions in list
        exceptFilesProjectIDs = []
        for projectID in exceptManifest['exceptFilesProjectIDs']:
            exceptFilesProjectIDs.append(projectID)

    #Get mods from manifest
    for file in manifest['files']:
        #get mod information
        try:
            modInformation = requests.get('https://addons-ecs.forgesvc.net/api/v2/addon/' + str(file['projectID']) + '/file/' + str(file['fileID']) + '/', headers=headers).json()
        except:
            print('cant get information for projectID: ' + str(file['projectID']) + ' with fileID: ' + str(file['fileID']))
            exit()

        #check if mod should be downloaded
        if file['projectID'] in exceptFilesProjectIDs:
            print('Excepted ' + modInformation["fileName"])
            continue

        #get mod data
        modData = requests.get(modInformation["downloadUrl"])
        if modData.status_code != 200:
            print('cant download ' + modInformation["fileName"] + ' from ' + modInformation["downloadUrl"] + ' because of status code ' + str(modData.status_code))
            exit()
        
        #save mod data
        try:
            if file['required'] == True:
                f = open(downloadToDir + modInformation["fileName"], 'wb')
            else:
                f = open(downloadToDir + modInformation["fileName"] + '.disabled', 'wb')

            f.write(modData.content)
            f.close()
            print('Downloaded ' + modInformation["fileName"])
        except:
            print('cant save file ' + modInformation["fileName"])
            exit()


if __name__ == '__main__':
    rootPath = os.path.dirname(os.path.dirname(os.path.abspath(__file__))) + '/'

    #forgeInstallerDownloader(rootPath, rootPath + 'manifest.json')
    modDownloader(rootPath + 'mods/', rootPath + 'scripts/manifest.json', rootPath + 'scripts/exceptManifest.json')