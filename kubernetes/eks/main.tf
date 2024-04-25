### ERROR unable to get role (voclabs): operation error IAM: GetRole, 
### https response error StatusCode: 403, RequestID: 0b2f9d75-2d91-4f8b-8266-a31e6c70450c, 
### api error AccessDenied: User: arn:aws:sts::375523444476:assumed-role/voclabs/user3195010=berlianherwindra@gmail.com 
### is not authorized to perform: iam:GetRole on resource: role voclabs with an explicit deny in an identity-based policy

provider "aws" {
  region = "us-east-1"
}

module "eks_cluster" {
  source              = "terraform-aws-modules/eks/aws"
  cluster_name        = "eks-cluster-sib6"
  cluster_version     = "1.29"
  vpc_id              = "vpc-06cfab0ef0d900c13"
  subnet_ids          = ["subnet-0072caceedbbd2da8", "subnet-06e590fcb83452739"]
}