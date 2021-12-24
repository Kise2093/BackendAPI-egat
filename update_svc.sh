#!/bin/bash

echo $(find backend-api -type f -name '*-service.yaml' | sed 's/ / -f /') > tmp_find_service.txt


NUMBER_OF_API=$(cat tmp_find_service.txt | awk '{print NF}');

echo "kubectl -n erc -p2p \\" > tmp_service_script.sh
for i in  $(seq 1 $NUMBER_OF_API)
do 
    if (($i < 16))
    then
        echo "$(cat tmp_find_service.txt | awk -v i="$i" '{print $i}') \\" >> tmp_service_script.sh
        #echo $(echo $i) >> test.sh
    else
        echo "$(cat tmp_find_service.txt | awk -v i="$i" '{print $i}')" >> tmp_service_script.sh
    fi
done



#bash tmp_service_script.sh

#rm -f tmp_service_script.sh
rm -f tmp_find_service.txt