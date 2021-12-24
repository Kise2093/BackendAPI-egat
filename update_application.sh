#! /bin/bash
#echo "Update all deployment applications"
#bash update_deployment.sh
#echo "Update all service"
#bash update_svc.sh



echo $(grep -rnw update_count.txt -e 'update_application.sh:')


echo $(grep -rnw update_count.txt -e 'update_application.sh:' | awk '{print $2}')

COUNT_SCRIPT_USED=$(grep -rnw update_count.txt -e 'update_application.sh:' | awk '{print $2}')

ADDED=$(($COUNT_SCRIPT_USED + 1))
#cat update_count.txt | sed "s/update_application.sh: " $COUNT_SCRIPT_USED" / update_application.sh: "$($COUNT_SCRIPT_USED + 1)" /" > update_count.txt

cat update_count.txt | sed "s/update_application.sh: $COUNT_SCRIPT_USED /update_application.sh: $ADDED /" > update_count.txt


COUNT_SCRIPT_USED=$(grep -rnw update_count.txt -e 'update_deployment.sh:' | awk '{print $2}')

ADDED=$(($COUNT_SCRIPT_USED + 1))
#cat update_count.txt | sed "s/update_application.sh: " $COUNT_SCRIPT_USED" / update_application.sh: "$($COUNT_SCRIPT_USED + 1)" /" > update_count.txt

cat update_count.txt | sed "s/update_deployment.sh: $COUNT_SCRIPT_USED /update_deployment.sh: $ADDED /" > update_count.txt
