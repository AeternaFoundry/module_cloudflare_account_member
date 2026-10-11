resource "cloudflare_account_member" "account_members" {
  for_each = var.account_members

  account_id = each.value.account_id
  email      = each.value.email
  policies   = each.value.policies
  roles      = each.value.roles
  status     = each.value.status
}

