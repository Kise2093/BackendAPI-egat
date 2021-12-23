echo $(find backend-api -type f -name '*-deployment.yaml' | sed 's/ / -f /') > test.txt

ALL_DEPLOYMENT=$(cat test.txt | sed 's/ / -f /')

DASH_F=$($ALL_DEPLOYMENT | sed 's/ / -f /')

echo "kubectl -n erc-p2p apply -f" "$DASH_F"