#!/bin/bash

NUMBER_OF_API=$(cat test.txt | awk '{print NF}');

echo "kubectl -n erc -p2p \\" > test_deployment.sh
for i in  $(seq 1 $NUMBER_OF_API)
do 
    if (($i < 16))
    then
        echo "$(cat test.txt | awk -v i="$i" '{print $i}') \\" >> test_deployment.sh
        #echo $(echo $i) >> test.sh
    else
        echo "$(cat test.txt | awk -v i="$i" '{print $i}')" >> test_deployment.sh
    fi
done

bash test_deployment.sh