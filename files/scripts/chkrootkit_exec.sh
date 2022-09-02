#!/bin/bash

export LANG=en_US

output="/var/log/chkrootkit/chkrootkit.log"

echo -e "start time: $(date)" >> $output
cd /opt/chkrootkit-x.xx ; timeout 600 ./chkrootkit >> $output 2>&1 || echo -e "exec timeout!!" >> $output
echo -e "end time: $(date)" >> $output

