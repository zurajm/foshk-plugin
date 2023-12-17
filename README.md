A Docker version of the [FOSHKPlugin](https://wiki.loxberry.de/plugins/foshkplugin/foshkplugin_generic_version#foshkplugin-genericversion-download) based [python alpine](https://hub.docker.com/_/python) image.

You have to mount you own config in the container:

`docker run -d --tmpfs /opt/FOSHKplugin/log -v ./config/foshkplugin.conf:/opt/FOSHKplugin/foshkplugin.conf --publish 8080:8080 --name foshkplugin zurajm/foshkplugin:latest`