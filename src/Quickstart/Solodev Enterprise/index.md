# Solodev CMS Enterprise Edition

Solodev CMS Enterprise Edition is an enterprise-grade content management system built from the ground up for Amazon Web Services (AWS). It is designed for high-availability websites and apps that require a secure, scalable, and redundant infrastructure powered by the AWS Cloud.

## Overview

Solodev CMS Enterprise Edition deploys a cluster of three servers, complete with load balancing and auto-scaling services. This architecture allows your websites and apps to meet the most demanding traffic while maintaining the highest levels of uptime.

Solodev CMS Enterprise Edition is available in the AWS Marketplace and can be instantly deployed in your account using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="_blank">AWS CloudFormation</a>. It leverages an advanced stack of AWS cloud stack to deliver a scalable and reliable workload, including:

* <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html" target="_blank">Amazon Elastic Load Balancer (ELB)</a>
* <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html" target="_blank">Amazon Certificate Manager (ACM)</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html" target="_blank">Amazon CloudFront</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html" target="_blank">Amazon CloudWatch</a>
* <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/what-is.html" target="_blank">Amazon DocumentDB (with MongoDB Compatibility)</a>
* <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html" target="_blank">Amazon Elastic Compute Cloud (EC2)</a>
* <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html" target="_blank">Amazon Elastic File System (EFS)</a>
* <a href="https://aws.amazon.com/elasticache/redis/" target="_blank">Amazon Elasticache for Redis</a>
* <a href="https://aws.amazon.com/systems-manager/" target="_blank">AWS Systems Manager</a>
* <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html" target="_blank">Amazon Relational Database Service (RDS) MySql</a>
* <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html" target="_blank">Amazon Route 53</a>
* <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html" target="_blank">Amazon Simple Storage Service (S3)</a>
* <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html" target="_blank">Amazon Virtual Private Cloud (VPC)</a>
* <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html" target="_blank">Amazon Web Application Firewall (WAF)</a>

Additional technology frameworks and libraries include <a href="https://www.linux.org/" target="_blank">Linux</a>, <a href="https://www.apache.org/" target="_blank">Apache</a>, <a href="https://www.mysql.com/" target="_blank">MySQL</a>, <a href="https://www.php.net/" target="_blank">PHP</a>, <a href="https://www.python.org/" target="_blank">Python</a>, and more.

<p><img src="../../images/quickstart/enterprise/solodev-cms-enterprise-architecture-2024-2.jpg" alt="Solodev CMS Enterprise Architecture" style="width: 75%;"></p>

## Prerequisites

* Before subscribing to Solodev CMS Enterprise Edition, you must have an AWS account and sign in.
* If you do not have an account, you can create one at <a href="https://aws.amazon.com/" target="_blank">https://aws.amazon.com/</a>.

## AWS Setup

**Step 1:** Subscribe to the AWS Marketplace.

Before launching a Solodev CMS Enterprise Edition stack, <a href="https://aws.amazon.com/marketplace/pp/prodview-gfsp76d4g66te" target="_blank" rel="noopener noreferrer">subscribe to the AWS Marketplace</a>.

At the top of the AWS Marketplace listing page for the Solodev CMS Enterprise Edition, click the **“Continue to Subscribe”** button.

<p><img src="../../images/quickstart/enterprise/cms-enterprise-aws-subscribe.png" alt="CMS Enterprise Subscribe"></p>

!!!Note:
If you already have a Solodev license, [call 1-800-859-7656](tel:18008597656), and a team member will activate your subscription.
!!!

**Step 2:** Configure your VPC and EC2 Key Pair.

Please note that a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html" target="_blank">VPC</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html" target="_blank">EC2 Key Pair</a> must be configured within the region you intend to launch your stack. If the following items are already created, you can skip directly to launch.

**Step 3**: Launch your CloudFormation Stack

Once you’ve configured your **VPC** and **EC2 Key Pair**, you can launch your CloudFormation stack.

**Step 4:** Confirm Subscription
Click on the "Continue to Subscribe" link within the AWS Marketplace listing. Once your subscription is processed, you will see a confirmation and the "Continue to Configuration" button.

<p><img src="../../images/enterprise-configuration.png" alt="Enterprise-Configuration"></p>

**Step 5:** Configure Solodev CMS Enterprise Edition
Specify the basic configurable such as the software version and the region you wish to launch the stack. Click on the "Continue to Launch" button to proceed.

<p><img src="../../images/enterprise-configuration1.png" alt="Enterprise-Configuration"></p>

**Step 6:** Launch Solodev CMS Enterprise Edition
Confirm your configurations and choose "Launch CloudFormation" within the "Choose Action" field. Click on the "Launch" button to continue to CloudFormation.

<p><img src="../../images/launch-enterprise.png" alt="Launch-Enterprise" style="width: 70%;"></p>

## Fill Out the CloudFormation Stack Wizard

Continue with the preselected CloudFormation Template. The Amazon S3 template URL (used for the CloudFormation configuration) should be pre-selected. Click "Next" to continue.

<p><img src="../../images/create-enterprise-stack.png" alt="Create Stack" style="width: 80%;"></p>

**Step 1:** Specify Details
The following parameters must be configured to launch your Solodev CMS CloudFormation stack:

**Parameter Description** | **Description** 
:--- | ---
Stack name | The name of your stack (set to "solodev-enterprise" by default). Please note the name must be all lowercase.

<p><img src="../../images/enterprise-stack-name.png" alt="Enterprise stack name"></p>

**Step 2:**  Network Setup

**Name** | **Description** 
:--- | ---
VPCID | Choose which VPC the application should be deployed to
Subnets | Choose at least two public subnets for this application
InstanceType | The EC2 instance type you wish to launch
InstanceCount | Number of instances behind the load balancer. Minimum 2 required for high availability.
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances

<p><img src="../../images/quickstart/enterprise/network-setup.jpg" alt="Network Setup Parameters"></p>

**Step 3:** CMS Settings

**Name** | **Description** 
:--- | ---
AdminUser | The solodev admin username
AdminPassword | ***Password must be between 1-41 characters. All characters are allowed***
DatabasePassword | ***Password must be between 8-41 characters. Only alphanumeric characters are allowed***
StorageEncrypted | Enable encryption for Database (RDS) and Filesystem (EFS). True or False.
CertificateArn | CertificateArn for SSL cert that matches the FQDN above. Please visit the AWS Certificate Manager.

<p><img src="../../images/quickstart/enterprise/cms-settings.jpg" alt="CMS Settings Parameters"></p>

**Step 5:** Optional: Advanced

**Name** | **Description** 
:--- | ---
CookbookURL | https://s3.amazonaws.com/solodev-cms/chef/1.2/cookbooks.tar.gz (**COPY AND URL where it says Enter String**) or Download and host on your own S3 bucket
WebsiteURL | Name of initial Solodev website
DeletionPolicy | Experimental: Deletion Policy (Retain, Delete, Snapshot)
RedisEnabled | Enable Redis ElastiCache cluster
CidrIpAccess | Please set CIDR to x.x.x.x/32 to allow one specific IP address access, 0.0.0.0/0 to allow all IP addresses access, or another CIDR range
DatabaseUsername | The database admin account username

<p><img src="../../images/quickstart/enterprise/enterprise-advanced.jpg" alt="Optional - Advanced Parameters"></p>

!!! Note:
Advanced options are not required in order to start Solodev CMS.
!!!

**Step 6:** Confirm your stack details

Click the "Next" button on the bottom of the screen to continue.

**Step 7:** Specify Options
Generally speaking, no additional options need to be configured. If you are experiencing continued problems installing the software, disable "Rollback on failure" under the "Advanced" options. This will allow for further troubleshooting if necessary. Click on the "Next" button to continue.

<p><img src="../../images/specific-options1.png" alt="Parameters "></p>
<p><img src="../../images/specific-options2.png" alt="Parameters "></p>
<p><img src="../../images/specific-options3.png" alt="Parameters "></p>

**Step 8:** Review
Review all CloudFront details and options. Ensure that the "I acknowledge that AWS CloudFormation might create IAM resources with custom names" checkbox is selected as well as the "I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND" checkbox. Click on the "Create" button to launch your stack.

<p><img src="../../images/quickstart/acknowledge.png" alt="CMS Pro Acknowledge Terms" style="width: 80%;"></p>

## Monitor the CloudFormation Stack Creation Process
Upon launching your CloudFormation stack, you can monitor the installation logs under the "Events" tab. The CloudFormation template will launch several stacks related to your Solodev instance, including EFS, EDS, and EC2. If you encounter any failures during this time, please visit the <a href="https://github.com/solodev/aws/wiki/Common-Issues">Common Issues</a> page to begin troubleshooting.

<p><img src="../../images/quickstart/stack-creation.png" alt="CMS Stack Creation Process" style="width: 80%;"></p>

!!! Note: 
Creating a stack may take up to 30 min dependnig on the InstanceType you have choosen. During this time AWS session may expire, however the stack will continue to build. In such case simply re-login to your AWS account.
!!!

## View CloudFormation Stack Outputs
If your stack builds successfully, you will see the green "CREATE_COMPLETE" message. Click on the primary stack and view the "Outputs" tab. You will find the load balancer URL for the Solodev backend. Point your primary domain (mydomain.com) and a dedicated backend domain/subdomain (solodev.mydomain.com) to this URL.

<p><img src="../../images/quickstart/stack-complete.png" alt="CMS Stack Create Complete" style="width: 80%;"></p>

## Login to Solodev

Visit the IP address or the backend domain you previously configured. Log in to Solodev using the username "solodev" and the password you configured on your stack.

<p><img src="../../images/quickstart/login-screen.png" alt="Solodev CMS Login Screen" style="width: 60%;"></p>

## Add your First Website

Please follow this <a href="/tutorials/websites/add-website/">link</a> and you will learn how to build your first website.

## Canceling your subscription

If you would like to cancel your Solodev subscription and you have chosen hourly billing plans, just delete the stack connected with your CMS Pro.

<!-- <p><img src="../../images/cmsproawssubscribe16.png" alt="CMSProSubscribe"></p> -->

!!! Note :
To simplify the process please disable **View nested** button in you AWS and remove the main stack.
!!!

## Support

To learn more about our add-on support options, call 1-800-859-7656 to speak with one of our Solodev Customer Care Specialists.