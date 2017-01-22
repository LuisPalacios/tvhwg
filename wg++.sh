#!/bin/bash
#
cd /home/luis/tvhwg
mono WebGrab+Plus.exe "/home/luis/tvhwg"
./categorias.pl < /tmp/guia-wg.xml > /home/luis/guia/guia-wg.xml
