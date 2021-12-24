#!/bin/bash

echo $(find backend-api -type f -name '*-deployment.yaml' | sed 's/ / -f /') > tmp_find_deployment.txt


NUMBER_OF_API=$(cat tmp_find_deployment.txt | awk '{print NF}');

echo "kubectl -n erc -p2p \\" > tmp_deployment_script.sh
for i in  $(seq 1 $NUMBER_OF_API)
do 
    if (($i < 16))
    then
        echo "$(cat tmp_find_deployment.txt | awk -v i="$i" '{print $i}') \\" >> tmp_deployment_script.sh
        #echo $(echo $i) >> test.sh
    else
        echo "$(cat tmp_find_deployment.txt | awk -v i="$i" '{print $i}')" >> tmp_deployment_script.sh
    fi
done

#bash tmp_deployment_script.sh

#rm -f tmp_deployment_script.sh
rm -f tmp_find_deployment.txt
