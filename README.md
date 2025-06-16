# terraform-serverless-feedback-app
Deploy a fully serverless web application on AWS using Terraform, integrating multiple AWS services like API Gateway, Lambda, DynamoDB, S3, and CloudFront.


Project Name: Serverless Web Application with Terraform
Objective:
Deploy a fully serverless web application on AWS using Terraform, integrating multiple AWS services like API Gateway, Lambda, DynamoDB, S3, and CloudFront.

Architecture Overview:
rust
Copy
Edit
User -> CloudFront -> S3 (Static Frontend)
     -> API Gateway -> Lambda -> DynamoDB
AWS Services Used:
S3 – Hosts the static frontend (React or HTML/CSS).

CloudFront – CDN for fast global access.

API Gateway – REST API entry point.

Lambda – Serverless backend logic.

DynamoDB – NoSQL database.

IAM – Secure role and policy management.

Project Features:
Upload and host frontend code on S3.

Set up API Gateway with routes like /submit, /getdata.

Use Lambda to handle API logic (Node.js or Python).

Store/retrieve data from DynamoDB.

Use Terraform to automate and manage the entire infrastructure.

Terraform Modules Breakdown:
S3 Bucket Module

CloudFront Distribution Module

API Gateway Module

Lambda Function Module

DynamoDB Table Module

IAM Roles & Policies Module

Sample Use Case:
Feedback App – Users submit feedback via the frontend, which hits the API Gateway. The Lambda function stores the feedback into DynamoDB. Admins can retrieve all feedback.
