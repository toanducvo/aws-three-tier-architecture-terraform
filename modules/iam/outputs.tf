output "ssm_instance_profile_arn" {
    value = aws_iam_instance_profile.ssm_instance_profile.arn
    description = "Instance profile ARN for SSM"
}

output "ssm_assume_role_policy" {
    value = data.aws_iam_policy_document.ssm_assume_role_policy.json
    description = "SSM assume role policy"
}