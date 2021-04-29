# cft-bug-repro

To reproduce the issue, generate a `tfvars` file matching your Organization settings:

```bash
$ cat terraform.tfvars
org_id          = "111111111"
billing_account = "ABCDE-ABCDE-ABCDE"
environment     = "env"
```

Then run the following:

```bash
$ terraform init
$ terraform plan
```

And you will get the following error:

```bash
Error: Invalid count argument

  on .terraform/modules/svc_project.svc_project/modules/core_project_factory/main.tf line 106, in resource "google_compute_shared_vpc_service_project" "shared_vpc_attachment":
 106:   count           = var.enable_shared_vpc_service_project ? 1 : 0

The "count" value depends on resource attributes that cannot be determined
until apply, so Terraform cannot predict how many instances will be created.
To work around this, use the -target argument to first apply only the
resources that the count depends on.
```