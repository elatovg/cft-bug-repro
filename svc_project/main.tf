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

locals {
  name = "${var.project_prefix}-${var.environment}-svc"
}

module "svc_project" {
  source            = "terraform-google-modules/project-factory/google"
  version           = "~> 10.3.2"
  billing_account   = var.billing_account
  org_id            = var.org_id
  name              = local.name
  random_project_id = "true"
  labels = {
    environment = var.environment
  }
  activate_apis        = var.activate_apis
  svpc_host_project_id = var.svpc_host_project_id
  shared_vpc_subnets   = var.shared_vpc_subnets
}
