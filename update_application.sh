#! /bin/bash
echo "Update all deployment applications"
bash update_deployment.sh
echo "Update all service"
bash update_svc.sh



#i++ the time user use update_application.sh
#echo $(grep -rnw update_count.txt -e 'update_application.sh:')

#echo $(grep -rnw update_count.txt -e 'update_application.sh:' | awk '{print $2}')

if [ -s update_count.txt ]
then
    echo "Counting"
    COUNT_SCRIPT_USED=$(grep -rnw update_count.txt -e 'update_application.sh:' | awk '{print $2}')
    ADDED=$(($COUNT_SCRIPT_USED + 1))
    #cat update_count.txt | sed "s/update_application.sh: " $COUNT_SCRIPT_USED" / update_application.sh: "$($COUNT_SCRIPT_USED + 1)" /" > update_count.txt
    cat update_count.txt | sed "s/update_application.sh: $COUNT_SCRIPT_USED/update_application.sh: $ADDED/" > update_count.txt
    if [ -s update_count.txt ]
    then
        cp update_count.txt archive/tmp_count.txt
    else 
        echo "Fail to count"
    fi
    
else
    echo "update_count.txt content is empty beginning to copy content from archive"
    cp archive/tmp_count.txt update_count.txt
fi