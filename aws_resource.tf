#EBS volume / hdd
resource "aws_ebs_volume" "ksk.tf" {
 availability_zone = "ap-south-la"
 size              = 5
  tags = {
     NAME="kurra.ksk"                       
  }                           
}