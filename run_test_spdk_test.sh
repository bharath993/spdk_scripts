#OUT="/root/result/spdk/output_9000_test.txt"
for type in randwrite
#for type in randread randwrite
	do
		 if [ $1 -eq 2 ] 
			then
                                echo "########################################################################################" | tee -a $OUT
				echo "Start the fio for $type of I/O $(($3))K "							| tee -a $OUT
				echo "########################################################################################" | tee -a $OUT
			LD_PRELOAD=/root/spdk/examples/nvme/fio_plugin/fio_plugin fio --rw=$type --name=random --norandommap=1 --ioengine=spdk --thread=1 --size=400m --group_reporting --exitall  --invalidate=1 --direct=1 --filename='trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode1 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode2 ns=1' --time_based --runtime=15 --iodepth=64 --numjobs=$2 --unit_base=1 --bs=$(($3))K --kb_base=1000 --ramp_time=2 | grep IOPS   >  /root/spdk_run/test_this/spdk_data.txt &
			fi

		 if [ $1 -eq 4 ]
                        then
                                echo "########################################################################################" | tee -a $OUT
                                echo "Start the fio for $type of I/O $(($3))K "							| tee -a $OUT 
                                echo "########################################################################################" | tee -a $OUT
                        LD_PRELOAD=/root/spdk/examples/nvme/fio_plugin/fio_plugin fio --rw=$type --name=random --norandommap=1 --ioengine=spdk --thread=1 --size=400m --group_reporting --exitall  --invalidate=1 --direct=1 --filename='trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode1 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode2 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode3 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode4 ns=1' --time_based --runtime=15 --iodepth=64 --numjobs=$2 --unit_base=1 --bs=$(($3))K --kb_base=1000 --ramp_time=2 | grep IOPS   >  /root/spdk_run/test_this/spdk_data.txt &
                        fi

		 if [ $1 -eq 8 ]
                        then
                                echo "########################################################################################" | tee -a $OUT
                                echo "Start the fio for $type of I/O $(($3))K "             					| tee -a $OUT
                                echo "########################################################################################" | tee -a $OUT
                        LD_PRELOAD=/root/spdk/examples/nvme/fio_plugin/fio_plugin fio --rw=$type --name=random --norandommap=1 --ioengine=spdk --thread=1 --size=400m --group_reporting --exitall --invalidate=1 --direct=1 --filename='trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode1 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode2 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode3 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode4 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode5 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode6 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode7 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode8 ns=1' --time_based --runtime=15 --iodepth=64 --numjobs=$2 --unit_base=1 --bs=$(($3))K --kb_base=1000 --ramp_time=2 | grep IOPS   >  /root/spdk_run/test_this/spdk_data.txt &
                        fi

		 if [ $1 -eq 16 ]
                        then
                                echo "########################################################################################" | tee -a $OUT
                                echo "Start the fio for $type of I/O $(($3))K "                   				| tee -a $OUT
                                echo "########################################################################################" | tee -a $OUT
                        LD_PRELOAD=/root/spdk/examples/nvme/fio_plugin/fio_plugin fio --rw=$type --name=random --norandommap=1 --ioengine=spdk --thread=1 --size=400m --group_reporting --exitall --invalidate=1 --direct=1 --filename='trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode1 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode2 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode3 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode4 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode5 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode6 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode7 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode8 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode9 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode10 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode11 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode12 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420  subnqn=nqn.2016-06.io.spdk\:cnode13 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode14 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode15 ns=1:trtype=RDMA adrfam=IPv4 traddr=102.1.7.5 trsvcid=4420 subnqn=nqn.2016-06.io.spdk\:cnode16 ns=1' --time_based --runtime=15 --iodepth=64 --numjobs=$2 --unit_base=1 --bs=$(($3))K --kb_base=1000 --ramp_time=2 | grep IOPS   >  /root/spdk_run/test_this/spdk_data.txt &
                        fi


			
			sleep 2
			
#			   source /root/spdk_run/collect_cpu.sh 
                           sh /root/spdk_run/test_this/collect_cpu_test.sh				
sleep 1

	sh /root/spdk_run/test_this/sum_2.sh 
	sleep 20
	 #echo -n '----Target guru %CPU----  ' | tee -a /root/result/output_1500_siw_64.txt
	 echo -n '----Target guru %CPU----  ' | tee -a $OUT
	 sleep 1
                #echo " 100 - $( cat /root/spdk_run/target_cpustat.txt | grep Average | awk '{print $12}' )" | bc | tee -a /root/result/output_1500_siw_64.txt
                echo " 100 - $( cat /root/spdk_run/test_this/target_cpustat.txt | grep Average | awk '{print $12}' )" | bc  | tee -a $OUT
                sleep 0.5
                #echo -n '----Initiator ketu %CPU----  ' | tee -a /root/result/output_1500_siw_64.txt
                echo -n '----Initiator ketu %CPU----  ' | tee -a $OUT
                #echo " 100 - $( cat /root/nvme-toe/initiator_cpustat.txt | grep Average | awk '{print $12}' )" | bc  | tee -a /root/result/output_1500_siw_64.txt
                echo " 100 - $( cat /root/spdk_run/test_this/initiator_cpustat.txt | grep Average | awk '{print $12}' )" | bc   | tee -a $OUT
                sleep 0.5
		wait

	done
sleep 1

