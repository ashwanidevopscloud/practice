curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.31.0/2024-09-12/bin/linux/amd64/kubectl
chmod +x ./kubectl # execution access
sudo mv kubectl /usr/local/bin/kubectl # this move to local bin any people login to this server can run this command
kubectl version
