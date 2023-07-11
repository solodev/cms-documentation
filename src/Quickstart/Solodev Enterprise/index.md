# Solodev CMS Enterprise Edition

Solodev CMS Enterprise Edition is an enterprise-grade content management system, built from the ground up for Amazon Web Services (AWS). It is designed for high availability websites and apps that require a secure, scalable, and redundant infrastructure powered by the AWS Cloud.

## Overview

Solodev CMS Enterprise Edition deploys a cluster of three servers, complete with load balancing and auto scaling services. This architecture allows your websites and apps to meet the most demanding traffic while maintaining the highest levels of uptime.

Solodev CMS Enterprise Edition is available in the AWS Marketplace and can be instantly deployed in your own account using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html">AWS CloudFormation</a>. It leverages an advanced stack of AWS cloud stack to deliver a scalable and reliable workload, including:

  * <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html">Amazon Elastic Load Balancer (ELB)</a>
  * <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">Amazon Certificate Manager (ACM)</a>
  * <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html">Amazon CloudFront</a>
  * <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch</a>
  * <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/what-is.html">Amazon DocumentDB (with MongoDB Compatibility)</a>
  * <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html">Amazon Elastic Compute Cloud (EC2)</a>
  * <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html">Amazon Elastic File System (EFS)</a>
  * <a href="https://aws.amazon.com/elasticache/redis/">Amazon Elasticache for Redis</a>
  * <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/welcome.html">Amazon OpsWorks</a>
  * <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html">Amazon Relational Database Service (RDS) MySql</a>
  * <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html">Amazon Route 53</a>
  * <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">Amazon Simple Storage Service (S3)</a>
  * <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon Virtual Private Cloud (VPC)</a>
  * <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">Amazon Web Application Firewall (WAF)</a>

Additional technology frameworks and libraries include <a href="https://www.linux.org/">Linux</a>, <a href="https://www.apache.org/">Apache</a>, <a href="https://www.mysql.com/">MySQL</a>, <a href="https://www.php.net/">PHP</a>, <a href="https://www.python.org/">Python</a>, and more.

<img src="../../images/solodevcmsenterprise.jpg" alt="AWS Diagram" style="width: 80%; display: block"></a>

## Prerequisites

Before subscribing to Solodev CMS Enterprise Edition, you will need to have an AWS account and sign in. If you do not have an account, you can create one at 
<a href="https://aws.amazon.com/" target="blank">https://aws.amazon.com/ </a>

## Step 1: Subscribe on the AWS Marketplace

Before launching a Solodev CMS Enterprise Edition stack, you'll first need to subscribe on the AWS Marketplace. Click the button below to get started:

[!button variant="warning" target="blank" text="Subscribe Now"](https://aws.amazon.com/marketplace/pp/prodview-gfsp76d4g66te)

At the top of the AWS Marketplace listing page for the Solodev CMS Enterprise Edition, click the “Continue to Subscribe” button.

<img src="../../images/cmsenterpriseawssubscribe1.png" alt="CMSEnterpriseSubscribe" style="width: 100%; display: block"></a>

!!!NOTE:
If you already have a Solodev license, call 1-800-859-7656 and a member of team will activate your subscription for you.
!!!

## Step 2: Configure Your VPC and EC2 Key Pair
Please note that both a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">VPC</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html">EC2 Key Pair</a> must be configured within the region you intend to launch your stack. If the following items are already created, you can skip directly to launch.

## Step 3: Launch your CloudFormation Stack
Once you’ve configured your **VPC** and **EC2 Key Pair**, you can launch your CloudFormation stack. Select the AWS region of your choice below:

#### Confirm Subscription
Click on the "Continue to Subscribe" link within the AWS Marketplace listing. Once your subscription is processed, you will see confirmation and the "Continue to Configuration" button.

<img src="../../images/enterprise-configuration.png" alt="Enterprise-Configuration" style="width: 100%; display: block"></a>

#### Configure Solodev CMS Enterprise Edition
Specify the basic configurables such as the software version and the region you wish to launch the stack. Click on the "Continue to Launch" button to proceed.

<img src="../../images/enterprise-configuration1.png" alt="Enterprise-Configuration" style="width: 100%; display: block"></a>

#### Launch Solodev CMS Enterprise Edition
Confirm your configurations and choose "Launch CloudFormation" within the "Choose Action" field. Click on the "Launch" button to continue to CloudFormation.

<img src="../../images/launch-enterprise.png" alt="Launch-Enterprise" style="width: 70%; display: block"></a>

## Step 4: Fill Out the CloudFormation Stack Wizard

Continue with the preselected CloudFormation Template
The Amazon S3 template URL (used for the CloudFormation configuration) should be preselected. Click "Next" to continue.

<img src="../../images/create-enterprise-stack.png" alt="Create-Stack" style="width: 80%; display: block"></a>

### Specify Details
The following parameters must be configured to launch your Solodev CMS CloudFormation stack:

**Parameter Description** | **Description** 
:--- | ---
Stack name | The name of your stack (set to "solodev-cms-opsworks" by default). Please note, the name must be all lowercase.

<img src="../../images/enterprise-stack-name.png" alt="Parameters " style="width: 100%; display: block"></a>

####  Network Setup

**Name** | **Description** 
:--- | ---
VPCID | Choose which VPC the application should be deployed to
Subnets | Choose at least two public subnets for this application
InstanceType | The EC2 instance type you wish to launch
InstanceCount | Number of instances behind load balancer. Minimum 2 required for high availability.
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances
CookbookURL | https://s3.amazonaws.com/solodev-cms/chef/cookbooks.tar.gz (**COPY AND URL where it says Enter String**) or Download and host on your own S3 bucket

<img src="../../images/enterprise-parmeters.png" alt="Parameters " style="width: 100%; display: block"></a>

#### CMS Settings

**Name** | **Description** 
:--- | ---
AdminUser | The solodev admin username
AdminPassword | The solodev admin password
DatabasePassword | The database root password
StorageEncrypted | Enable encryption for both Database (RDS) and Filesystem (EFS). True or False.

<img src="../../images/cmsproawssubscribe9.png" alt="CMSEnterpriseSubscribe" style="width: 100%; display: block"></a>

#### Optional: SSL Configuration

**Name** | **Description** 
:--- | ---
CertificateArn | CertificateArn for SSL cert that matches the FQDN above. Please visit the AWS Certificate Manager.

<img src="../../images/enterprise-ssl.png" alt="Parameters " style="width: 80%; display: block"></a>

#### Optional: Advanced

**Name** | **Description** 
:--- | ---
WebsiteURL | Name of initital Solodev website
RestoreBucketName | Name of S3 bucket containing files for restore
DeletionPolicy | Experimental: Deletion Policy (Retain, Delete, Snapshot)
RedisEnabled | Enable Redis ElastiCache cluster
AdminEnabled | Enable Admin Layer

<img src="../../images/enterprise-advanced.png" alt="Parameters " style="width: 100%; display: block"></a>

### Confirm your stack details

Click "Next" button on the the bottom of the screen to continue.

### Specify Options
Generally speaking, no additional options need to be configured. If you are experiencing continued problems installing the software, disable "Rollback on failure" under the "Advanced" options. This will allow for further troubleshooting if necessary. Click on the "Next" button to continue.

<img src="../../images/specific-options1.png" alt="Parameters " style="width: 100%; display: block"></a>
<img src="../../images/specific-options2.png" alt="Parameters " style="width: 100%; display: block"></a>
<img src="../../images/specific-options3.png" alt="Parameters " style="width: 100%; display: block"></a>

### Review
Review all CloudFront details and options. Ensure that the "I acknowledge that AWS CloudFormation might create IAM resources with custom names" checkbox is selected as well as the "I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND" checkbox. Click on the "Create" button to launch your stack.

<img src="../../images/cmsproawssubscribe12.png" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

## Step 5: Monitor the CloudFormation Stack Creation Process
Upon launching your CloudFormation stack, you will be able to monitor the installation logs under the "Events" tab. The CloudFormation template will launch several stacks related to your Solodev instance including EFS, EDS, and EC2. If you encounter any failures during this time, please visit the <a href="https://github.com/solodev/aws/wiki/Common-Issues">Common Issues</a> page to begin troubleshooting.

<img src="../../images/cmsproawssubscribe13.png" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

## Step 6: View CloudFormation Stack Outputs
If your stack builds successfully, you will see the green "CREATE_COMPLETE" message. Click on the primary stack and view the "Outputs" tab. You will find the load balancer URL for the Solodev backend. Point both your primary domain (mydomain.com) and a dedicated backend domain/subdomain (solodev.mydomain.com) to this URL.

<img src="../../images/cmsproawssubscribe14.png" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

## Step 7: Login to Solodev
Visit either the load balancer URL or the backend domain you configured in Step 7. Log-in to Solodev using the username "solodev" and the password you configured in Step 5.

<img src="../../images/cmsproawssubscribe15.png" alt="CMSProSubscribe" style="width: 75%; display: block"></a>

## Step 8: Add your First Website

Please follow this <a href="/tutorials/cms/add-website/">link</a> and you will learn how to build your first website.

## Canceling your subscription

If you would like to cancel your Solodev subscription and you have choosen hourly billing plans just delete the stack connected with you CMS Pro

<img src="../../images/cmsproawssubscribe16.png" alt="CMSProSubscribe" style="width: 100%; display: block"></a>

## Support

To learn more about our add-on support options, call 1-800-859-7656 to speak with one of our Solodev Customer Care Specialists.