/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "host_project" {
  source = "./host_project"

  billing_account = var.billing_account
  org_id          = var.org_id
  activate_apis   = var.activate_apis
  environment     = var.environment

}

module "svc_project" {
  source = "./svc_project"

  billing_account      = var.billing_account
  org_id               = var.org_id
  activate_apis        = var.activate_apis
  environment          = var.environment
  svpc_host_project_id = module.host_project.svpc_host_project_id
  shared_vpc_subnets   = module.host_project.shared_vpc_subnets

}
