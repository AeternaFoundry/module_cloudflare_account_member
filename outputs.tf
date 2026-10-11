output "account_members_id" {
  description = "Map of id values across all account_members, keyed the same as var.account_members except keys with no id are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_members_account_id" {
  description = "Map of account_id values across all account_members, keyed the same as var.account_members except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_members_email" {
  description = "Map of email values across all account_members, keyed the same as var.account_members except keys with no email are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.email if v.email != null && length(v.email) > 0 }
}
output "account_members_policies" {
  description = "Map of policies values across all account_members, keyed the same as var.account_members except keys with no policies are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "account_members_roles" {
  description = "Map of roles values across all account_members, keyed the same as var.account_members except keys with no roles are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "account_members_status" {
  description = "Map of status values across all account_members, keyed the same as var.account_members except keys with no status are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.status if v.status != null && length(v.status) > 0 }
}
output "account_members_user" {
  description = "Map of user values across all account_members, keyed the same as var.account_members except keys with no user are omitted"
  value       = { for k, v in cloudflare_account_member.account_members : k => v.user if v.user != null && length(v.user) > 0 }
}

