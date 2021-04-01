test
if kubectl config view --- cluster: null

eksctl create cluster /
--name TaskCluster /
--region eu-west-2 /
--nodegroup-name TaskCluster /
--nodes 2 /
--nodes-min 2 /
--nodes-max 3 /
--node-type t3.medium /
--with-oidc /
--ssh-access /
--ssh-public-key /home/ubuntu/.ssh/id_rsa.pub /
--managed
