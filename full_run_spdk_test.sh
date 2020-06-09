export OUT="/root/result/spdk/output_9000_test_read_CR_run_256_2.txt"
#for io in 4 8 64 256
for io in 256
do
#read -p "Start target with 4 devices and press [Enter] key to continue ............" key

echo "================== 2 dev, 2 conn/dev  =======================" | tee -a $OUT
sh run_test_spdk_test.sh 2 2 $io
sleep 5

echo "================== 2 dev, 4 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 2 4 $io
sleep 5

echo "================== 2 dev, 8 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 2 8 $io
sleep 5

echo "****************************************"


#read -p "Restart target with 8 devices and press [Enter] key to continue ............" key



echo "================== 4 dev, 2 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 4 2 $io
sleep 5

echo "================== 4 dev, 4 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 4 4 $io
sleep 5

echo "================== 4 dev, 8 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 4 8 $io
sleep 5

echo "****************************************"

#read -p "Restart target with 16 devices and press [Enter] key to continue ............" key

echo "================== 8 dev, 2 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 8 2 $io
sleep 5

echo "================== 8 dev, 4 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 8 4 $io
sleep 5

echo "================== 8 dev, 8 conn/dev  =======================" | tee -a $OUT
sh run_test_spdk_test.sh 8 8 $io
sleep 5

echo "****************************************"

#read -p "Restart target with 32 devices and press [Enter] key to continue ............" key

echo "================== 16 dev, 2 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 16 2 $io
sleep 5

echo "================== 16 dev, 4 conn/dev  ======================" | tee -a $OUT
sh run_test_spdk_test.sh 16 4 $io
sleep 5

echo "================== 16 dev, 8 conn/dev =======================" | tee -a $OUT
sh run_test_spdk_test.sh 16 8 $io
sleep 5

echo "****************************************"

done
#echo "================== 32 dev, 2 conn/dev, 128 ======================"
#echo "================== 32 dev, 4 conn/dev, 256 ======================"
#echo "================== 32 dev, 8 conn/dev, 512 ====================="

#echo "================== 64 dev, 2 conn/dev, 256 ====================="

#echo "================== 64 dev, 4 conn/dev, 512 ====================="

#echo "================== 64 dev, 8 conn/dev, 1024====================="
