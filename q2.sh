#!/bin/bash

cat /etc/shells | awk 'BEGIN{FS="/"}{ if($2 == "usr")print $NF}'

