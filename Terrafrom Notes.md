### What is IAC?
Infrastructure as Code (IAC) is a practice of managing and provisioning infrastructure through machine-readable configuration files. It allows developers and DevOps teams to automate infrastructure tasks, ensuring consistency and reducing manual effort.

### Benefits of IAC:
- **Consistency**: Ensures consistent configurations across environments.
- **Scalability**: Simplifies scaling infrastructure up or down.
- **Efficiency**: Reduces manual effort by automating repetitive tasks.
- **Version Control**: Stores infrastructure configurations in source control systems like Git.

### What is Terraform?
Terraform is an open-source IAC tool developed by HashiCorp. It enables users to define and provision infrastructure using a declarative configuration language.

### Key Features:
- **Provider Support**: Works with multiple cloud providers like AWS, Azure, GCP, etc.
- **Declarative Language**: Focus on "what" to build, not "how."
- **State Management**: Maintains a state file to track infrastructure changes.
- **Plan & Apply**: Allows users to preview changes with `terraform plan` before applying them.

### Blocks Used in Terraform Language

### Common Blocks:

1. **Provider Block**:
   Specifies the cloud provider (e.g., AWS, Azure, GCP).
   ```hcl
   provider "aws" {
     region = "us-east-1"
   }
   ```

2. **Resource Block**:
   Defines infrastructure components like instances or storage.
   ```hcl
   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"
     instance_type = "t2.micro"
   }
   ```

3. **Variable Block**:
   Allows parameterizing configurations.
   ```hcl
   variable "instance_type" {
     default = "t2.micro"
   }
   ```

4. **Output Block**:
   Displays results after applying configurations.
   ```hcl
   output "instance_id" {
     value = aws_instance.example.id
   }
   ```

5. **Data Block**:
   Fetches information about existing resources.
   ```hcl
   data "aws_ami" "example" {
     most_recent = true
     owners      = ["self"]
   }
   ```

### Explain Terraform Lifecycle

The Terraform lifecycle consists of several stages that manage the infrastructure's state effectively:

### 1. **Write**
Define infrastructure using Terraform configuration files.

### 2. **Init**
Initialize the working directory with `terraform init`. This sets up the backend and downloads provider plugins.

### 3. **Plan**
Generate an execution plan using `terraform plan` to preview the changes Terraform will make.

### 4. **Apply**
Apply the changes to achieve the desired state with `terraform apply`.

### 5. **Refresh**
Sync the Terraform state with the real-world infrastructure using `terraform refresh`.

### 6. **Destroy**
Remove all managed resources using `terraform destroy`.

---

### What is HEREDOC?
HEREDOC (**Here Document**) is a multi-line string syntax in Terraform used to define large blocks of text or commands. It is often utilized in `UserData` to pass startup scripts to cloud instances.

### Example with UserData
Below is an example of using HEREDOC within an EC2 instance resource:

```hcl
resource "aws_instance" "web_server" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  user_data = <<-EOF
    #!/bin/bash
    echo "Hello, World!" > /var/www/html/index.html
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
  EOF

  tags = {
    Name = "web-server"
  }
}
```

### HEREDOC Syntax
- **`<<-EOF`**: Begins the HEREDOC. The `-` allows indentation.
- **Content**: The script or text.
- **`EOF`**: Ends the HEREDOC block.

---

### Types of Dependencies

### Implicit Dependencies
Terraform automatically handles resource dependencies based on references between resources.
Example:
```hcl
resource "aws_instance" "example" {
  subnet_id = aws_subnet.main.id  # Implicit dependency on the subnet
}
```

### Explicit Dependencies
Use `depends_on` to define dependencies explicitly.
Example:
```hcl
resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  depends_on    = [aws_vpc.main]  # Explicit dependency on the VPC
}
```
