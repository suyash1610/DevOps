#!/bin/bash

TEMP_FILE=$1         # $1=template.txt

for ARGUMENT in "$@"
do

    KEY=$(echo $ARGUMENT | cut -f1 -d=)
    VALUE=$(echo $ARGUMENT | cut -f2 -d=)

    case "$KEY" in
            fname)fname=${VALUE} ;;
            topic)topic=${VALUE} ;;
    esac
done

sed -i -r "s/fname/"$fname"/" $1
sed -i -r "s/topic/"$topic"/" $1

echo "Template file processed"