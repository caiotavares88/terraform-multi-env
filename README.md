# terraform-multi-env

## Usage:

Initialize Dev and Prod

```
terraform init -backend-config=dev/backend.dev.hcl
```

```
terraform init -backend-config=production/backend.production.hcl
```
