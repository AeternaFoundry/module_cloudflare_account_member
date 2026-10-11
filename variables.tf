variable "account_members" {
  description = <<EOT
Map of account_members, attributes below
Required:
    - account_id
    - email
Optional:
    - policies
    - roles
    - status
EOT

  type = map(object({
    account_id = string
    email      = string
    policies = optional(set(object({
      access = string
      permission_groups = set(object({
        id = string
      }))
      resource_groups = set(object({
        id = string
      }))
    })))
    roles  = optional(set(string))
    status = optional(string)
  }))
}

