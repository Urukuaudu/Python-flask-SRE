# Create EKS Cluster
resource "aws_eks_cluster" "demo" {
  name     = "demo"
  #role_arn = data.terraform_remote_state.network.outputs.demo_role
  role_arn =  "arn:aws:iam::105410359089:role/eks-cluster-demo"

  vpc_config {
    subnet_ids = [
      data.terraform_remote_state.network.outputs.public[0], data.terraform_remote_state.network.outputs.public[1],
      data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.private[1]
    ]
  }
}
