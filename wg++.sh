#!/bin/bash
#
cd /home/luis/wg++
mono WebGrab+Plus.exe "/home/luis/wg++"
./categorias.pl < /tmp/guia-wg.xml > /home/luis/guia/guia-wg.xml
