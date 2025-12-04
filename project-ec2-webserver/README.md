# Secure Web Hosting on AWS EC2

This project demonstrates how to deploy and secure a Linux-based Apache web server using Amazon EC2. It highlights core cloud infrastructure setup, networking configuration, role-based access control, and troubleshooting.

---

## 🏗️ Cloud Architecture
- Amazon EC2 (Ubuntu)
- Custom VPC (Public Subnet)
- Internet Gateway + Route Table
- Security Groups for controlled access
- Key Pair authentication for SSH
- Amazon S3 (optional backup)

---

## 🔧 Deployment Steps
1️⃣ Create a custom VPC and public subnet  
2️⃣ Attach an Internet Gateway and update route table  
3️⃣ Launch an EC2 instance with Ubuntu AMI  
4️⃣ Configure Security Groups:
   - Allow SSH: Port 22 (My IP only)
   - Allow HTTP: Port 80 (Public)
5️⃣ Install Apache Web Server:

```bash
sudo apt update
sudo apt install apache2 -y
echo "<h1>Hello from AWS EC2!</h1>" | sudo tee /var/www/html/index.html
sudo systemctl enable apache2
sudo systemctl restart apache2

6️⃣ Test public access using EC2 Public IP
7️⃣ Optional: S3 backup script for web files
