# Solodev CMS Professional Edition

Solodev CMS Professional Edition is a business-grade content management system built from the ground up for Amazon Web Services (AWS). It is designed for small to medium-sized websites and apps that require a secure, scalable, flexible, and affordable hosting infrastructure powered by the AWS Cloud.

## Overview

Solodev CMS Professional Edition deploys on a single AWS EC2 instance fully managed by AWS OpsWorks and features its own MySQL database. This lightweight architecture allows your websites and apps to meet variable traffic demands while maintaining uptime at a reasonable cost. 

Solodev CMS Professional Edition is available in the AWS Marketplace and can be instantly deployed in your account using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="_blank" rel="noopener noreferrer">AWS CloudFormation</a>. It leverages an advanced stack of AWS cloud services to deliver a scalable and reliable workload, including:

* <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html" target="_blank" rel="noopener noreferrer">Amazon Certificate Manager (ACM)</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html" target="_blank" rel="noopener noreferrer">Amazon CloudFront</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html" target="_blank" rel="noopener noreferrer">Amazon CloudWatch</a>
* <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/what-is.html" target="_blank" rel="noopener noreferrer">Amazon DocumentDB (with MongoDB Compatibility)</a>
* <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html" target="_blank" rel="noopener noreferrer">Amazon Elastic Compute Cloud (EC2)</a>
* <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html" target="_blank" rel="noopener noreferrer">Amazon Elastic File System (EFS)</a>
* <a href="https://aws.amazon.com/elasticache/redis/" target="_blank" rel="noopener noreferrer">Amazon Elasticache for Redis</a>
* <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Relational Database Service (RDS) MySql</a>
* <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Route 53</a>
* <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html" target="_blank" rel="noopener noreferrer">Amazon Simple Storage Service (S3)</a>
* <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html" target="_blank" rel="noopener noreferrer">Amazon Virtual Private Cloud (VPC)</a>
* <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html" target="_blank" rel="noopener noreferrer">Amazon Web Application Firewall (WAF)</a>

Additional technology frameworks and libraries include <a href="https://www.linux.org/" target="_blank" rel="noopener noreferrer">Linux</a>, <a href="https://www.apache.org/" target="_blank" rel="noopener noreferrer">Apache</a>, <a href="https://www.mysql.com/" target="_blank" rel="noopener noreferrer">MySQL</a>, <a href="https://www.php.net/" target="_blank" rel="noopener noreferrer">PHP</a>, <a href="https://www.python.org/" target="_blank" rel="noopener noreferrer">Python</a>, and more.

<p><img src="../../images/quickstart/solodev-cms-pro.jpg" alt="AWS Cloud Diagram" style="width: 75%;"></p>

## Prerequisites

* Before subscribing to Solodev CMS Professional Edition, you must have an AWS account and sign in. 
* If you do not have an account, you can create one at <a href="https://aws.amazon.com/" target="blank" rel="noopener noreferrer">https://aws.amazon.com/</a>.

## AWS Setup

**Step 1:** Subscribe on the AWS Marketplace.

Before launching a Solodev CMS Professional Edition stack, <a href="https://aws.amazon.com/marketplace/pp/B07KMFPW3X/ref=_ptnr_solodev_github_B07KMFPW3X" target="_blank" rel="noopener noreferrer">subscribe to the AWS Marketplace</a>.

!!!NOTE:
If you already have a existing Solodev license, call [1-800-859-7656](tel:1-800-859-7656), and a team member will activate your subscription.
!!!

**Step 2:** Configure Your VPC and EC2 Key Pair.

Please note that a VPC and EC2 Key Pair must be configured within the region you intend to launch your stack. If the following items are already created, you can skip directly to launch.

**Step 3:** Subscribe to Solodev CMS Professional Edition.

At the top of the AWS Marketplace listing page for the Solodev CMS Professional Edition, click the **“Continue to Subscribe”** button.

<p><img src="../../images/quickstart/aws-pro-subscribe-header.jpg" alt="Continue to Subscribe button" style="width: 80%;"></p>

You will be directed to the **"Configure your software contract"** screen. Here you can review the contract duration, purchase licenses and EC2 instances, and compare prices.

Click the **"Continue to Configuration"** button on the top-right corner of the AWS listing.

<p><img src="../../images/quickstart/aws-pro-subscribe.jpg" alt="CMS Pro Configure Software Contract" style="width: 80%;"></p>

**Step 4:** Configure Solodev CMS Professional Edition.

Specify the basic configurable such as the software version and the region you wish to launch the stack. Click on the **"Continue to Launch"** button to proceed.

<p><img src="../../images/quickstart/cms-pro-configure-software.jpg" alt="CMS Pro Configure Screen" style="width: 80%;"></p>

**Step 5:** Launch your CloudFormation Stack.

Confirm your configurations and choose **"Launch CloudFormation"** within the "Choose Action" field. Click on the **"Launch"** button to continue to CloudFormation.

<p><img src="../../images/quickstart/cms-pro-launch-cloudformation.jpg" alt="CMS Pro Launch CloudFormation" style="width: 80%; margin-bottom: 20px;"></p>

## CloudFormation Stack Wizard

**Step 1:** Create stack

Continue with the pre-selected CloudFormation Template. The Amazon S3 template URL (used for the CloudFormation configuration) should be pre-selected. Click **"Next"** to continue.

<p><img src="../../images/quickstart/create-stack.jpg" alt="CMS Pro Create Stack" style="width: 80%; margin-bottom: 20px;"></p>

**Step 2:** Specify stack details

The following parameters must be configured to launch your Solodev DCX CloudFormation stack:

**Parameter Description** | **Description** 
:--- | ---
Stack name | The name of your stack (set to "solodev-cms-pro" by default). Please note, the name must be all lowercase and separated with dashes.

<p><img src="../../images/quickstart/stack-name.png" alt="CMS Pro Stack Name" style="width: 80%;"></p>

**Network Setup**

**Name** | **Description** 
:--- | ---
VPCID | Choose which VPC the application should be deployed to
PublicSubnet1ID | The ID of the public subnet in Availability Zone 1 in your existing VPC (e.g., subnet-a0246dcd)
PublicSubnet2ID | The ID of the public subnet in Availability Zone 2 in your existing VPC (e.g., subnet-b1236eea)
InstanceType | The EC2 instance type you wish to launch
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances
CookbookURL | Host on your own S3 bucket (preselected)

<p><img src="../../images/cmsproawssubscribe8.png" alt="CMSProSubscribe" style="width: 80%;"></p>

**CMS Settings**

**Name** | **Description** 
:--- | ---
AdminUser | Name of the admin user
AdminPassword | ***Password must be between 1-41 characters. All characters are allowed***
DatabasePassword | ***Password must be between 8-41 characters. Only alphanumeric characters are allowed***
StorageEncrypted | Enable encryption both Database (RDS) and Filesystem (EFS). True or False.

<p><img src="../../images/cmsproawssubscribe9.png" alt="CMSProSubscribe" style="width: 80%;"></p>

**Optional: Advanced**

**Name** | **Description** 
:--- | ---
WebsiteUrl | Name of your first Solodev website
RestoreBucketName | Name of the S3 bucket containing files for restore
DeletionPolicy | Experimental: Deletion Policy (Retain, Delete, Snapshot)
CertificateArn | CertificateArn for SSL cert that matches the FQDN above.

<p><img src="../../images/cmsproawssubscribe10.png" alt="CMSProSubscribe" style="width: 80%;"></p>

!!! Note:
Advanced options are not required in order to start Solodev CMS.
!!!

**Step 3:** Confirm your stack options

Click the **"Next"** button on the bottom of the screen to continue.

**Step 4:** Specify stack options

Generally speaking, no additional options need to be configured. If you are experiencing continued problems installing the software, disable "Rollback on failure" under the "Advanced" options. This will allow for further troubleshooting if necessary. Click on the "Next" button to continue.

**Step 5:** Review stack

Review all CloudFront details and options. Ensure that the "I acknowledge that AWS CloudFormation might create IAM resources with custom names" checkbox is selected as well as the "I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND" checkbox. Click on the **"Submit"** button to launch your stack.

<p><img src="../../images/cmsproawssubscribe12.png" alt="CMSProSubscribe" style="width: 80%;"></p>

## Monitor the CloudFormation Stack Creation Process

Upon launching your CloudFormation stack, you can monitor the installation logs under the "Events" tab. The CloudFormation template will launch several stacks related to your Solodev instance, including EFS, EDS, and EC2. If you encounter any failures during this time, please visit the Common Issues page to begin troubleshooting.

<p><img src="../../images/cmsproawssubscribe13.png" alt="CMSProSubscribe" style="width: 80%;"></p>

!!! Note: 
Creating a stack may take up to 30 min depending on the InstanceType you have chosen. During this time AWS session may expire, however the stack will continue to build. In such case simply re-login to your AWS account.
!!!

## View CloudFormation Stack Outputs
If your stack builds successfully, you will see the green "CREATE_COMPLETE" message. Click on the primary stack and view the "Outputs" tab. You will find the IP address associated with the Solodev backend. Point your primary domain (mydomain.com) and a dedicated backend domain/subdomain (solodev.mydomain.com) to this URL.

<p><img src="../../images/cmsproawssubscribe14.png" alt="CMSProSubscribe" style="width: 80%;"></p>

## Login to Solodev

Visit the IP address or the backend domain you previously configured. Log in to Solodev using the username "solodev" and the password you configured on your stack.

<p><img src="../../images/cmsproawssubscribe15.png" alt="CMSProSubscribe" style="width: 60%;"></p>

## Add your First Website

Please follow this <a href="/tutorials/websites/add-website/">link</a>, and you will learn how to build your first website.

## Canceling your subscription

If you would like to cancel your Solodev subscription and you have chosen hourly billing plans, just delete the stack connected with your CMS Pro.

<p><img src="../../images/cmsproawssubscribe16.png" alt="CMSProSubscribe" style="width: 80%;"></p>


!!! Note :
To simplify the process please disable **View nested** button in you AWS and remove the main stack.
!!!
---

## Support
To learn more about our add-on support options, call [1-800-859-7656](tel:1-800-859-7656) to speak with one of our Solodev Customer Care Specialists.