#!/bin/bash

cat /etc/shells | awk 'BEGIN{FS="/"}{ if($2 == "usr")print $NF}'
#awk -F "/" '{ if($0 == "/usr") print $NF}'
