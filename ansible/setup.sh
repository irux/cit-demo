IFS=","
if [ -n "$MANAGER" ]
then
    echo "[swarm_manager]" >> /etc/ansible/hosts
    for word in $MANAGER; do
        echo "$word" >> /etc/ansible/hosts
    done
    echo "[swarm_manager:vars]" >> /etc/ansible/hosts
     echo "ansible_python_interpreter:/usr/bin/python3"
else 
    echo "defined"
fi


if [ -n "$WORKERS" ]
then
    echo "[swarm_workers]" >> /etc/ansible/hosts
    for word in $WORKERS; do
        echo "$word" >> /etc/ansible/hosts
    done
     echo "[swarm_workers:vars]" >> /etc/ansible/hosts
     echo "ansible_python_interpreter:/usr/bin/python3"
else 
    echo "defined"
fi