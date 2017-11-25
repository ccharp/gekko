KEYPATH="~/.ssh/garage01.pem"
REMOTE="ubuntu@ec2-18-217-99-159.us-east-2.compute.amazonaws.com"

rsync -avz -e "ssh -i $KEYPATH" --progress ./ $REMOTE:~/gekko/

RUN_GEKKO='cd /home/ubuntu/gekko; ./run_server.sh'
ssh -t -i $KEYPATH $REMOTE $RUN_GEKKO

