terraform-azure-infra

Production-grade Azure infrastructure using Terraform — AKS cluster with VNet, auto-scaling, and monitoring across dev and prod environments.

---
 Architecture
```
terraform-azure-infra/
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── terraform.tfvars
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars
├── modules/
│   ├── aks/
│   ├── vnet/
│   └── monitoring/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

---

 What This Provisions

- **VNet** — Private network with dedicated subnet for AKS nodes
- **AKS** — Auto-scaling Kubernetes cluster (Azure Kubernetes Service)
- **Monitoring** — Azure Monitor + Log Analytics workspace with CPU/memory alerts

---

Tech Stack

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0078D4?style=flat&logo=microsoftazure&logoColor=white)
![Kubernetes](https://img.shields.io/badge/AKS-326CE5?style=flat&logo=kubernetes&logoColor=white)

---

 How to Deploy

Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.0
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure subscription with contributor access

 Authenticate to Azure

```bash
az login
az account set --subscription "<your-subscription-id>"
```

 Deploy Dev Environment

```bash
cd environments/dev
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

 Deploy Prod Environment

```bash
cd environments/prod
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```

---

 CI/CD

Every push to `main` triggers the GitHub Actions workflow which runs:

1. `terraform fmt` — format check
2. `terraform init` — initialise providers
3. `terraform validate` — validate configuration

See `.github/workflows/terraform-ci.yml` for full pipeline configuration.

---

 Key Variables

| Variable | Description | Default |
|---|---|---|
| `location` | Azure region | `westeurope` |
| `environment` | Deployment environment | `dev` |
| `node_count` | AKS node count | `2` |
| `node_size` | AKS node VM size | `Standard_DS2_v2` |

---

 Author

**Lokesh Kumar Gaddala**
DevOps & Cloud Engineer | Berlin, Germany
[GitHub](https://github.com/Lokesh0423) · [LinkedIn](https://linkedin.com/in/lokesh-kumar-gaddala)
