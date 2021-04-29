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

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
}

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
}

variable "project_prefix" {
  description = "Name prefix to use for projects created."
  default     = "cft"
  type        = string
}


variable "environment" {
  description = "Name environment to use for projects created."
  type        = string
}

variable "activate_apis" {
  description = "APIs to Enable"
  type        = list
}

