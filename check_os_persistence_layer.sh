ls --full-time -tr /hana/shared/log/HXE/mnt00001/hdb00002.00003/logsegment_000_* | grep -v directory | tail -n 1 | awk '{print $6" "$7" "$8" "$9}' ; ls --full-time /hana/shared/data/HXE/mnt00001/hdb00002.00003/datavolume_0000.dat | awk '{print $6" "$7" "$8" "$9}'
