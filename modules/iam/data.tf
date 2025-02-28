data "aws_iam_policy_document" "ssm_assume_role_policy" {
    version = "2012-10-17"
    statement {
        actions = ["sts:AssumeRole"]
        principals {
            type        = "Service"
            identifiers = ["ec2.amazonaws.com"]
        }
        effect = "Allow"
    }
}
