from python:3.9-alpine
RUN pip install requests paho-mqtt influxdb
    
WORKDIR /opt/FOSHKplugin
RUN wget http://foshkplugin.phantasoft.de/files/generic-FOSHKplugin.zip \
    && unzip generic-FOSHKplugin.zip \
    && mkdir log

COPY config/foshkplugin.conf .
EXPOSE 8080
CMD ["python", "/opt/FOSHKplugin/foshkplugin.py"]