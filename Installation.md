---

## 1. Install Terraform in a Linux System

Terraform can be installed on a Linux system using the following steps:

### Step 1: Download Terraform

```bash
wget https://releases.hashicorp.com/terraform/$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r '.current_version')/terraform_$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r '.current_version')_linux_amd64.zip
```

### Step 2: Unzip the Binary

```bash
sudo apt install unzip -y
unzip terraform_*_linux_amd64.zip
```

### Step 3: Move the Binary to PATH

```bash
sudo mv terraform /usr/local/bin/
```

### Step 4: Verify Installation

```bash
terraform -v
```

---
