output "result" {
  value = {
    resources = [module.postgres.server_id, module.postgres.database_ids]
    values = {
      server   = module.postgres.server_fqdn
      username = module.postgres.administrator_login
    }
    secrets = {
      password = module.postgres.administrator_password
    }
  }
  sensitive = true
}
