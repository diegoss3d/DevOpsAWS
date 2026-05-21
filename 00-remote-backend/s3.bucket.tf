resource "aws_s3_bucket" "this" {
  bucket = "workshop-march-remote-backend-27031988"

  tags = {
    Name = "workshop-march-remote-backend-27031988"
  }
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}