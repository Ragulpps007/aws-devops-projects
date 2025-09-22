README.md

# EC2 Web Server Hosting

## Overview
Host a simple static website on an Amazon EC2 instance using AWS Free Tier.

## Steps
1. Launch EC2 instance (Amazon Linux 2, t2.micro).  
2. Configure security group (SSH 22, HTTP 80).  
3. Connect via SSH: `ssh -i mykey.pem ec2-user@<public-ip>`.  
4. Install Apache:
   ```bash
   sudo yum update -y
   sudo yum install httpd -y
   sudo systemctl start httpd
   sudo systemctl enable httpd


Deploy website:

echo "<h1>Hello from AWS EC2!</h1>" | sudo tee /var/www/html/index.html


Open http://<EC2-Public-IP> in browser.

Outcome

Static website hosted on EC2 instance.


**setup.sh**
```bash
#!/bin/bash
# EC2 Web Server Setup
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Hello from AWS EC2 - Automated!</h1>" | sudo tee /var/www/html/index.html
