#!/bin/bash

sed -i 's|"benchmarkdbpass", ".*", 3306|"benchmarkdbpass", "'"${DBHOST}"'", 3306|g' sys.config

fw_depends erlang18

#rm -rf deps/* ebin/*

./mad clean deps comp plan bundle techempower
./techempower

#erl -pa ebin apps/*/ebin deps/*/ebin +sbwt very_long +swt very_low -s techempower -noshell -detached 
