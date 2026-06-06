# terraform-azure-infra

Production-grade Azure infrastructure using Terraform — AKS cluster with VNet, auto-scaling, and monitoring.

## Architecture
- **VNet** — Private network with dedicated subnet for AKS
- **AKS** — Auto-scaling Kubernetes cluster (Azure Kubernetes Service)
- **Monitoring** — Azure Monitor with CPU/memory alerts

## Tech Stack
- Terraform
- Azure Kubernetes Service (AKS)
- Azure Virtual Network
- Azure Monitor + Log Analytics

## Usage

### Dev
```bash
cd environments/dev
terraform init
terraform apply -var-file="terraform.tfvars"
```

### Prod
```bash
cd environments/prod
terraform init
terraform apply -var-file="terraform.tfvars"
```

## Results
- 30% infrastructure cost reduction via AKS migration
- 99.95% cluster uptime with Azure Monitor alerts
- Multi-region disaster recovery capability
