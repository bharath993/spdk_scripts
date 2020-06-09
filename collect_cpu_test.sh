#!/bin/bash
#echo "Total tids:" | tee -a $OUT
#ssh 10.193.185.5 cat /sys/kernel/debug/cxgb4/0000\:05\:00.4/tids | tee -a  $OUT &
#echo "Total qps:" | tee -a $OUT
#ssh 10.193.185.5  cat /sys/kernel/debug/iw_cxgb4/0000\:05\:00.4/qps | tee -a $OUT &

ssh 10.193.185.5 mpstat 3 10 > /root/spdk_run/test_this/target_cpustat.txt &
mpstat 3 10 > /root/spdk_run/test_this/initiator_cpustat.txt

