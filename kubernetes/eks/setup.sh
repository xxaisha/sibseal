1. install aws cli on local https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
2. set credentials
mkdir ~/.aws
cd .aws
nano credentials
[default]
aws_access_key_id=
aws_secret_access_key=
aws_session_token=
3. aws configure
AWS Access Key ID [****]: 
AWS Secret Access Key [*****]: 
Default region name []: us-east-1
Default output format []: text
4. aws help & aws eks list-clusters 
5. aws eks update-kubeconfig --region us-east-1 --name eks-xxxx-xxx
6. cek di lens harus udah update
7. (optional) kubectl config rename-context old-name new-name