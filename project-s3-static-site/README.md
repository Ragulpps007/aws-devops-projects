# AWS S3 Static Website Hosting

This project demonstrates hosting a **static website** on **Amazon S3**. It covers bucket creation, static website configuration, public access setup, and optional integration with a custom domain and CloudFront for global delivery.

---

## 🚀 Project Overview

In this project, we:

1. Created an S3 bucket for website hosting  
2. Uploaded HTML, CSS, and image files  
3. Configured the bucket for **Static Website Hosting**  
4. Set bucket policy to allow public read access  
5. Tested the website using the S3 endpoint  
6. Optionally configured **custom domain** via Route 53 and **CloudFront CDN** for faster global access

---

## 🏗 Architecture

```
User → Internet → CloudFront (Optional) → S3 Bucket → Static Website Files
```

---

## 🖥 Technologies Used

- AWS S3 (Static Hosting)  
- HTML / CSS / JS  
- AWS Route 53 (Custom Domain, Optional)  
- AWS CloudFront (Optional CDN)  
- JSON (Bucket Policy Configuration)  

---

## 📌 Step-by-Step Implementation

### 1️⃣ Create S3 Bucket
- Name bucket (globally unique)  
- Region: nearest to users for low latency  
- Disable Block All Public Access  

### 2️⃣ Upload Website Files
- HTML, CSS, JS, images  
- Organize in folders as needed  

### 3️⃣ Enable Static Website Hosting
- Properties → Static Website Hosting → Enable  
- Set **Index Document** (e.g., `index.html`)  
- Optionally set **Error Document** (`error.html`)  

### 4️⃣ Configure Bucket Policy (Public Read)

Example JSON policy:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::your-bucket-name/*"
    }
  ]
}
```

### 5️⃣ Test the Website
- Copy **S3 Endpoint URL**  
- Open in browser → site should load  

### 6️⃣ Optional: Configure Custom Domain + CloudFront
- Route 53 → Create Hosted Zone → Add Record pointing to CloudFront  
- CloudFront → Add S3 as origin, enable HTTPS  
- Verify site loads globally with custom domain  

---

## 🛠 Troubleshooting

| Issue | Root Cause | Solution |
|-------|------------|---------|
| Website not loading | Bucket not public | Update bucket policy / permissions |
| Wrong index page | Misconfigured index document | Check static hosting properties |
| HTTPS not working | CloudFront SSL not set | Configure ACM certificate |

---

## 📊 Skills Demonstrated

✔ S3 bucket creation and management  
✔ Static website hosting on AWS  
✔ Bucket policy & IAM knowledge  
✔ Route 53 domain mapping  
✔ CloudFront CDN setup (optional)  
✔ Troubleshooting and deployment verification  

---

## 🚀 Future Enhancements

- Integrate CI/CD to auto-upload website updates  
- Use Lambda@Edge for dynamic content handling  
- Enable versioning and logging on S3 bucket for auditing  

---

## 🖼 Outputs & Screenshots 
- Bucket policy JSON  
- Live website via S3 endpoint 
