**setup.sh**
```bash
#!/bin/bash
# EC2 Web Server Setup
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Hello from AWS EC2 - Automated!</h1>" | sudo tee /var/www/html/index.html
