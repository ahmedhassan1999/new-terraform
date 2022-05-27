
resource "aws_db_subnet_group" "group-sub" {
  name       = "subnet-group"
  subnet_ids = [module.network.private-sub1_id , module.network.private-sub2_id] 
}


resource "aws_elasticache_subnet_group" "group-cash" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [module.network.private-sub1_id , module.network.private-sub2_id] 
}