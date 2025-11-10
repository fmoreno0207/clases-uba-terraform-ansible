resource "aws_s3_bucket" "testbucketdemo" {
  bucket = "mi-bucket-demo-f-137"  # nombre global único
  tags = {
    Name        = var.Name
    Environment = var.Environment
  }
}
