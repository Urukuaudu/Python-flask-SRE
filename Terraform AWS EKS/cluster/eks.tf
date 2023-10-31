# Create EKS Cluster
resource "aws_eks_cluster" "demo" {
  name     = "demo"
  role_arn = data.terraform_remote_state.network.outputs.node_role
  #role_arn =  "arn:aws:iam::752724691123:role/eks-cluster-demo"

  vpc_config {
    subnet_ids = [
      data.terraform_remote_state.network.outputs.public[0], data.terraform_remote_state.network.outputs.public[1],
      data.terraform_remote_state.network.outputs.private[0], data.terraform_remote_state.network.outputs.private[1]
    ]
  }
}
