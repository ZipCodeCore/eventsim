#! /bin/bash
while true; do java -XX:+AggressiveOpts -XX:+UseG1GC -XX:+UseStringDeduplication -Xmx8G -jar eventsim-assembly-2.0.jar $*; done;