# AWS-CLI (Replace apt with yum for Amazon linux)

---

## 2. Install AWS CLI v2 on a Linux System (Ubuntu / Amazon Linux)

AWS CLI v2 can be installed using the following combined command steps:

### Step 1: Update system, install dependencies, download, unzip and install AWS CLI v2

```bash
sudo apt update -y 2>/dev/null || sudo yum update -y -q && \
```

```bash
sudo apt install unzip curl -y 2>/dev/null || sudo yum install unzip curl -y -q && \
```

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
```

```bash
unzip awscliv2.zip && \
sudo ./aws/install
```

### Verify and Configure Aws-Cli

```bash
aws --version
aws configure
```
