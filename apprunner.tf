
module "app_runner_shared_config_repo" {
  source = "terraform-aws-modules/app-runner/aws"
  create_service = false
  connections = {
    github = {
      provider_type = "GITHUB"
    }
  }
  auto_scaling_configurations = {
    mini = {
      name            = "mini"
      max_concurrency = 20
      max_size        = 5
      min_size        = 1
    }
  }
}

resource "null_resource" "wait_for_approval" {
  depends_on = [module.app_runner_shared_config_repo]

  provisioner "local-exec" {
    command = "./script.sh"
  }
}


module "app_runner_code_base" {
  depends_on = [null_resource.wait_for_approval]
  source = "terraform-aws-modules/app-runner/aws"
  service_name = "app-runner-PoC-repository"
    auto_scaling_configuration_arn = module.app_runner_shared_config_repo.auto_scaling_configurations["mini"].arn
    source_configuration = {
        authentication_configuration = {
            connection_arn = module.app_runner_shared_config_repo.connections["github"].arn
        }
    auto_deployments_enabled = true
    code_repository = {
        code_configuration = {
           configuration_source = "REPOSITORY"
        }
        repository_url = var.repository_url
        source_code_version = {
            type = "BRANCH"
            value = "main"
       }
    }
    }
    enable_observability_configuration = false
    }