
## Introducción

Este proyecto está vinculado al apunte [Tvheadend y Movistar TV (2016)](http://www.luispa.com/archivos/4571),
donde describo cómo uso Tvheadend como concentrador de canales de TV casero 
para consumirlos desde Raspberries Pi con KODI. 

Uno de los retos es la descarga del EPG y para solucionarlo tengo otros
dos proyectos, el primero y principal es [tvhstar](https://github.com/LuisPalacios/tvhstar)
que descarga casi todo el EPG desde la web de Movistar y lo convierte
a formato XMLTV para que pueda ser consumido por Tvheadend, aunque le faltan algunos canales. 

Ahí es donde entra este segundo proyecto que estás leyendo ahora mismo, complementa
al anterior usando WebGrab+Plus para crear otro fichero XMLTV adicional con los
canales que me faltan.


## Instalación de WebGrab+Plus en Linux

Consulta este apunte [WebGrab+Plus con TVHeadEnd en Linux](http://www.luispa.com/archivos/1587) donde
describo cómo preparar el programa. En mi caso he instalado el programa en 
el home de mi usuario linux `/home/luis/wg++`


## Configuración

Ficheros apra WebGrab+Plus, al directorio de instalación, en mi caso `/home/luis/wg++`

* WebGrab++.config.xml : Fichero de configuración para el programa
* categorias.pl : Postprocesador para cambiar las categorías
* elmundo.es.channels.xml : Fichero de configuración canales (Fuente [aquí](http://www.webgrabplus.com/epg-channels))
* elmundo.es.ini : Fichero de configuración canales (Fuente [aquí](http://www.webgrabplus.com/epg-channels))
* wg++.sh : Script para ejecutar WebGrab+Plus con `mono`

Grabber interno que configuras en Tvheadend, copiar a `/usr/bin/tv_grab_wg`

* tv_grab_wg : Grabber interno que configuras en Tvheadend

Ficheros de arranque y programación de systemd, copiar a `/etc/systemd/system`

* tvhguia-wg.service : Servicio para ejecutar wg++.sh
* tvhguia-wg.timer : Cada cuanto tiempo programo su ejecución
