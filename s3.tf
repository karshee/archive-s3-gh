resource "aws_s3_bucket" "data-archive" {
  bucket = "comp-${var.instance}-${var.env}-data-archive"
}
#${var.instance}-${var.env}
resource "aws_s3_bucket_intelligent_tiering_configuration" "bucket" {
  bucket = aws_s3_bucket.data-archive.id
  name   = "${var.instance}-${var.env}-data-archive-config"

  tiering {
    access_tier = "DEEP_ARCHIVE_ACCESS"
    days        = 180
  }
  tiering {
    access_tier = "ARCHIVE_ACCESS"
    days        = 90
  }
}
