#EBS volume / HDD
resource "aws_ebs_volume" "tf_srikanth" {
 availability_zone = "ap-south-1a"
 size              = 10
  tags = {
     Name = "kurra.ksk"                       
  }                           
}