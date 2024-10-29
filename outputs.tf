# Outputs
# 
# Output values make information about your infrastructure available on the command line, 
# and can expose information for other Terraform configurations to use.
#================================================

output "roles" {
  description = "Role Membership."
  value       = [for member in google_project_iam_member.member : member.role]
}
