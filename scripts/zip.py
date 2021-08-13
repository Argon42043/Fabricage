#!/usr/bin/env python3
from zipfile import ZipFile
import json
import os

#read manifest
try:
    m = open('scripts/manifest.json', 'r')
    manifest = json.load(m)
    m.close()
except:
    print('manifest cant be accessed or does not exist')
    exit()

zipfileName = manifest['name'] + '_' + manifest['version'] + '.zip'

#create zipfile
zip = ZipFile(zipfileName, 'w')
#add manifest and modlist
zip.write('scripts/manifest.json', 'manifest.json')
zip.write('scripts/modlist.html', 'modlist.html')

#add overrides folder recursive
for dirname, subdirs, files in os.walk('overrides'):
    zip.write(dirname)
    for filename in files:
        zip.write(os.path.join(dirname, filename))

zip.close()
print('Created '+ zipfileName)
