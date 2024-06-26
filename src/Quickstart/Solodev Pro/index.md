# Solodev CMS Professional Edition

Solodev CMS Professional Edition is a business-grade content management system built from the ground up for Amazon Web Services (AWS). It is designed for small to medium-sized websites and apps that require a secure, scalable, flexible, and affordable hosting infrastructure powered by the AWS Cloud.

## Overview

Solodev CMS Professional Edition deploys on a single AWS instance and features its own MySQL database. This lightweight architecture allows your websites and apps to meet variable traffic demands while maintaining uptime at a reasonable cost. 

Solodev CMS Professional Edition is available in the AWS Marketplace and can be instantly deployed in your account using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="_blank" rel="noopener noreferrer">AWS CloudFormation</a>. It leverages an advanced stack of AWS cloud services to deliver a scalable and reliable workload, including:

* <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html" target="_blank" rel="noopener noreferrer">Amazon Certificate Manager (ACM)</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html" target="_blank" rel="noopener noreferrer">Amazon CloudFront</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html" target="_blank" rel="noopener noreferrer">Amazon CloudWatch</a>
* <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/what-is.html" target="_blank" rel="noopener noreferrer">Amazon DocumentDB (with MongoDB Compatibility)</a>
* <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html" target="_blank" rel="noopener noreferrer">Amazon Elastic Compute Cloud (EC2)</a>
* <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html" target="_blank" rel="noopener noreferrer">Amazon Elastic File System (EFS)</a>
* <a href="https://aws.amazon.com/elasticache/redis/" target="_blank" rel="noopener noreferrer">Amazon Elasticache for Redis</a>
* <a href="https://aws.amazon.com/systems-manager/" target="_blank">AWS Systems Manager</a>
* <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Relational Database Service (RDS) MySql</a>
* <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Route 53</a>
* <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Simple Storage Service (S3)</a>
* <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html" target="_blank" rel="noopener noreferrer">Amazon Virtual Private Cloud (VPC)</a>
* <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html" target="_blank" rel="noopener noreferrer">Amazon Web Application Firewall (WAF)</a>

Additional technology frameworks and libraries include <a href="https://www.linux.org/" target="_blank" rel="noopener noreferrer">Linux</a>, <a href="https://www.apache.org/" target="_blank" rel="noopener noreferrer">Apache</a>, <a href="https://www.mysql.com/" target="_blank" rel="noopener noreferrer">MySQL</a>, <a href="https://www.php.net/" target="_blank" rel="noopener noreferrer">PHP</a>, <a href="https://www.python.org/" target="_blank" rel="noopener noreferrer">Python</a>, and more.

<p><img src="../../images/quickstart/pro/solodev-cms-pro-architecture-2024-2.jpg" alt="Solodev CMS Pro Architecture" style="width: 75%;"></p>

## Prerequisites

* Before subscribing to Solodev CMS Professional Edition, you must have an AWS account and sign in. 
* If you do not have an account, you can create one at <a href="https://aws.amazon.com/" target="blank" rel="noopener noreferrer">https://aws.amazon.com/</a>.
* Configure your VPC and EC2 Key Pair.

## AWS Setup

**Step 1:** Subscribe on the AWS Marketplace.

* Subscribe to **Solodev CMS Professional Edition** on the AWS Marketplace by <a href="https://aws.amazon.com/marketplace/pp/B07KMFPW3X/ref=_ptnr_solodev_github_B07KMFPW3X" target="_blank" rel="noopener noreferrer">clicking here</a>.

!!!NOTE:
If you already have a existing Solodev license, call [1-800-859-7656](tel:1-800-859-7656), and a team member will activate your subscription.
!!!

<!-- **Step 2:** Configure Your VPC and EC2 Key Pair.

Please note that a VPC and EC2 Key Pair must be configured within the region you intend to launch your stack. -->

* At the top of the AWS Marketplace listing page for the Solodev CMS Professional Edition, click the **“Continue to Subscribe”** button.

<p><img src="../../images/quickstart/pro/cms-pro-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%;"></p>

* You will be directed to the **"Terms and Conditions"** page. Review and accept these terms.

<p><img src="../../images/quickstart/pro/cms-pro-terms.jpg" alt="CMS Pro Configure Software Contract" style="width: 80%;"></p>

* You will receive a thank you message and you will be asked to configure your software. Click the **"Continue to Configuration"** button on the top-right corner of the AWS listing.

<p><img src="../../images/quickstart/pro/aws-pro-subscribe.jpg" alt="CMS Pro Configure Software Contract" style="width: 80%;"></p>

* Specify the basic configurable such as the software version and the region you wish to launch the stack. Click on the **"Continue to Launch"** button to proceed.

<p><img src="../../images/quickstart/pro/cms-pro-configure.jpg" alt="CMS Pro Configure" style="width: 80%;"></p>

* Confirm your configurations and choose **"Launch CloudFormation"** within the "Choose Action" field. Click on the **"Launch"** button to continue to CloudFormation.

<p><img src="../../images/quickstart/pro/cms-pro-launch.jpg" alt="CMS Pro Launch CloudFormation" style="width: 70%; margin-bottom: 20px;"></p>

## CloudFormation Stack Wizard

**Step 1:** Create stack

Continue with the pre-selected CloudFormation Template. The Amazon S3 template URL (used for the CloudFormation configuration) should be pre-selected. Click **"Next"** to continue.

<p><img src="../../images/quickstart/create-stack.jpg" alt="CMS Pro Create Stack" style="width: 80%; margin-bottom: 20px;"></p>

**Step 2:** Specify stack details

The following parameters must be configured to launch your Solodev DCX CloudFormation stack:

**Parameter Description** | **Description** 
:--- | ---
Stack name | The name of your stack (set to "solodev-pro" by default). Please note, the name can include letters (A-Z and a-z), numbers (0-9), and dashes (-).

<p><img src="../../images/quickstart/stack-name.png" alt="CMS Pro Stack Name" style="width: 80%;"></p>

**Network Setup**

**Name** | **Description** 
:--- | ---
VPCID | Choose which VPC the application should be deployed to.
PublicSubnet1ID | The ID of the public subnet in Availability Zone 1 in your existing VPC (e.g., subnet-a0246dcd).
PublicSubnet2ID | The ID of the public subnet in Availability Zone 2 in your existing VPC (e.g., subnet-b1236eea).
InstanceType | The EC2 instance type you wish to launch.
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances.
CidrIpAccess | Please set CIDR to 0.0.0.0/0 to allow all IP addresses to access the web server on port 80 and 443

<p><img src="../../images/quickstart/pro/network-setup-pro.jpg" alt="CMS Pro Network Setup"></p>

**CMS Settings**

**Name** | **Description** 
:--- | ---
AdminUser | Name of the admin user.
AdminPassword | ***Password must be between 1-41 characters. All characters are allowed***.
DatabasePassword | ***Password must be between 8-41 characters. Only alphanumeric characters are allowed***.
StorageEncrypted | Enable encryption both Database (RDS) and Filesystem (EFS). True or False.

<p><img src="../../images/quickstart/pro/cms-settings-pro.jpg" alt="CMS Pro Settings"></p>

**Optional: Advanced**

**Name** | **Description**
:--- | ---
CookbookURL | https://s3.amazonaws.com/solodev-cms/chef/1.2/cookbooks.tar.gz | Download and host on your own S3 bucket or copy this URL.
WebsiteUrl | Name of your first Solodev website.
DeletionPolicy | Experimental: Deletion Policy (Retain, Delete, Snapshot).
CertificateArn | CertificateArn for SSL cert that matches the FQDN above. Please visit the AWS Certificate Manager.
RestoreBucketName | Name of the S3 bucket containing files for restore.

<p><img src="../../images/quickstart/pro/pro-advanced.jpg" alt="CMS Pro Optional Settings"></p>

!!! Note:
Advanced options are not required in order to start Solodev CMS.
!!!

**Step 3:** Configure stack options

Generally speaking, no additional options need to be configured. If you are experiencing continued problems installing the software, disable "Rollback on failure" under the "Advanced" options. This will allow for further troubleshooting if necessary. Click on the "Next" button to continue.

**Step 4:** Review stack

Review all CloudFront details and options. Ensure that the "I acknowledge that AWS CloudFormation might create IAM resources with custom names" checkbox is selected as well as the "I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND" checkbox. Click on the **"Submit"** button to launch your stack.

<p><img src="../../images/quickstart/acknowledge.png" alt="CMS Pro Acknowledge Terms" style="width: 80%;"></p>

## Monitor the CloudFormation Stack Creation Process

Upon launching your CloudFormation stack, you can monitor the installation logs under the "Events" tab. The CloudFormation template will launch several stacks related to your Solodev instance, including EFS, EDS, and EC2. If you encounter any failures during this time, please visit the Common Issues page to begin troubleshooting.

<p><img src="../../images/quickstart/stack-creation.png" alt="CMS Pro Stack Creation Process" style="width: 80%;"></p>

!!! Note: 
Creating a stack may take up to 30 min depending on the InstanceType you have chosen. During this time AWS session may expire, however the stack will continue to build. In such case simply re-login to your AWS account.
!!!

## View CloudFormation Stack Outputs
If your stack builds successfully, you will see the green "CREATE_COMPLETE" message. Click on the primary stack and view the "Outputs" tab. You will find the IP address associated with the Solodev backend. Point your primary domain (mydomain.com) and a dedicated backend domain/subdomain (solodev.mydomain.com) to this URL.

<p><img src="../../images/quickstart/stack-complete.png" alt="CMS Pro Stack Create Complete" style="width: 80%;"></p>

## Login to Solodev

Visit the IP address or the backend domain you previously configured. Log in to Solodev using the username "solodev" and the password you configured on your stack.

<p><img src="../../images/quickstart/login-screen.png" alt="Solodev CMS Login Screen" style="width: 60%;"></p>

## Add your First Website

Please [follow this link](/dashboard/) to learn more about Solodev and to learn how to build your first website.

## Canceling your subscription

If you would like to cancel your Solodev subscription and you have chosen hourly billing plans, just delete the stack connected with your CMS Pro.

<p><img src="../../images/quickstart/stack-delete.png" alt="CMS Pro Stack" style="width: 80%;"></p>


!!! Note :
To simplify the process please disable **View nested** button in you AWS and remove the main stack.
!!!
---

## Support
To learn more about our add-on support options, call [1-800-859-7656](tel:1-800-859-7656) to speak with one of our Solodev Customer Care Specialists.