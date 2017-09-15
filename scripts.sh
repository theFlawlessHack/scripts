#!/bin/bash

echo -e "create script folder"
mkdir scripts/

echo -e "create script names"
for i in $(seq 1 14); do
	touch scripts/$i.md;  
done
