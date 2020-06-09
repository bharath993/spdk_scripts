#!/bin/bash
#cd /root/nvme-toe
cd /root/spdk_run/test_this
cat /root/spdk_run/test_this/spdk_data.txt
total=0
i=0
#for i in `cat data.txt | awk '{print $4}'  | grep -o -E '[0-9]+.[0-9]+'` ; do
#for i in `cat data.txt | grep -Po 'BW=\d+.\d+' | grep -Po '\d+.\d+'` ; do
#for U in `cat data.txt | grep -Poi 'BW=\d+.?\d+M?' | grep -Poi '\d+.?\d+M?'` ; do
for U in `cat /root/spdk_run/test_this/spdk_data.txt | grep -Poi 'BW=\d+.?\d+[M,k]?' | grep -Poi '\d+.?\d+[M,K]?'` ; do
BU=`echo $U |grep -Poi M`
if [ $? -ne 0 ]
then
BU=`echo $U |grep -Poi K`
if [ $? -ne 0 ]
then
BU="G"
fi
fi
if [ "$BU" == "M" ]
then
U=`echo $U |grep -Poi "\d+.\d+"`
U=`echo "$U / 1000.0"|bc -l`
fi

if [ "$BU" == "K" ]
then
U=`echo $U |grep -Poi "\d+.\d+"`
U=`echo "$U / 1000.0"|bc -l`
U=`echo "$U / 1000.0"|bc -l`
fi

total="$(echo "$total + $U" | bc -l)"
#    echo $i
#    total="$(echo "$total + $i" | bc -l)"
done
#echo 'TOTAL BW is:' $total 'Gbit/s' | tee -a /root/result/output_1500_siw_64.txt
echo 'TOTAL BW is:' $total 'Gbit/s' | tee -a $OUT
#cat tmp | awk '{ print $2 }' | grep -o -E '[0-9]+' >> tmp1.txt
total=0
i=0
#for i in `cat data.txt | awk '{print $5}'  | grep -o -E '[0-9]+'` ; do
for i in `cat /root/spdk_run/test_this/spdk_data.txt |grep -Poi 'IOPS=\d+.\d+K?'|grep -Poi '\d+.\d+K?'`;do

#cat data.txt | grep -Po 'iops=\d+.\d+' | grep -Po '\d+.\d+'` ; do
#    echo $i
j=`echo $i |grep -Poi K`
if [ $? -ne 0 ]
then
j="NO"
fi
if [ "$j" == "K" ] || [ "$j" == "k" ]
then
i=`echo $i |grep -Poi "\d+.\d+"`
i=`echo "$i * 1000.0"|bc -l`

fi
    total=`echo "$total + $i"|bc -l`
done
#echo 'TOTAL IOPs are:' $total  | tee -a /root/result/output_1500_siw_64.txt
echo 'TOTAL IOPs are:' $total | tee -a $OUT

