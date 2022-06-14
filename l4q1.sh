#!/bin/bash

arquivo='./l4q1ANEX'

clear
cat $arquivo | tr ' ' '.' | sed -r 's/\.//'| sed -r 's/\.//' | sed -r 's/[0-9]{1,2}[A-Za-z]*[\.]*//' | sed -r 's/[A-Za-z]*[\.]*//' | tr '.' ' '
