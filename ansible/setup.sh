IFS=","
if [ -n "$MANAGER" ]
then
    echo "[swarm_manager]" >> /etc/ansible/hosts
    for word in $MANAGER; do
        echo "$word" >> /etc/ansible/hosts
    done
else 
    echo "defined"
fi


if [ -n "$WORKERS" ]
then
    echo "[swarm_worker]" >> /etc/ansible/hosts
    for word in $WORKERS; do
        echo "$word" >> /etc/ansible/hosts
    done
else 
    echo "defined"
fi