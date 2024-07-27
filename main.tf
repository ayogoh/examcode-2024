resource "aws_iam_user" "deprotech" {
  name = "ndifor"
  path = "/system/"

  tags = {
    tag-key = "ndifor_iam user"
  }
}