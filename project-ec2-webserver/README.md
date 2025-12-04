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
```

6️⃣ Test public access using EC2 Public IP  
7️⃣ Optional: Create S3 backup script for web files  

---

## 🛡️ Security Configuration
- SSH restricted to specific IP for secure access  
- Strict use of Security Group rules  
- IAM role-based access (no hard-coded keys)

---

## 🛠️ Troubleshooting
| Issue | Root Cause | Solution |
|------|------------|----------|
| Website not loading | Port 80 not allowed in SG | Allow inbound port 80 |
| SSH Access denied | Wrong PEM permissions | chmod 400 file.pem |
| Apache down | Service failure | systemctl restart apache2 |

---

## 📊 Skills Demonstrated
✔ Linux Server Administration  
✔ Networking (VPC, Subnts, Routes, SGs)  
✔ IAM and Access Management  
✔ Troubleshooting in AWS  
✔ Secure Web Hosting  
✔ System Monitoring Basics  

---

## 🚀 Future Enhancements
- Enable HTTPS (SSL/ACM Integration)
- Add Auto Scaling & Load Balancer
- Deploy using automated CI/CD pipeline


