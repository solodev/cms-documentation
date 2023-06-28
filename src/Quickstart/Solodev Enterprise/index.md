# Solodev CMS Enterprise Edition

Climb aboard the Solodev CMS Enterprise and warp speed ahead with a highly available, full redundant archiecture managed by AWS OpsWorks. With AWS, there's no need to spend time and money maintaining servers and data centers. Quickly and easily deploy Solodev Enterprise to build a website, portal, or applications that can handle virtually any amount of traffic, leveraging multiple geographic data centers for unmatched redundancy, security, and scalability. All available on-demand in the <a href="https://aws.amazon.com/marketplace/pp/prodview-l24c6lisy37ju?qid=1534773581495&sr=0-1&ref_=srh_res_product_title">AWS Marketplace</a>.

## Overview
Solodev CMS Enterprise Edition for AWS OpsWorks on AWS uses a set of YAML templates including Amazon Virtual Private Cloud (VPC), Amazon Elastic Compute Cloud (EC2), Amazon Elastic Load Balancing (Application Load Balancer), Amazon Relational Database Service (RDS), Amazon Elastic File System (EFS), Amazon Simple Storage Service (S3), Amazon CloudWatch, Amazon CloudFront, Amazon Route 53, Amazon Certificate Manager (ACM), Amazon Web Application Firewall (WAF) managed by Amazon OpsWorks and deployed by AWS CloudFormation.

<img src="../../images/Solodev-CMS-Enterprise.png" alt="AWS Diagram" style="width: 100%; display: block"></a>

Getting to the Solodev Launchpad is easy. In just a few short steps, you'll be lifting off on AWS.

## Prerequisites
Before subscribing to a desired stack, Solodev recommends that customers have created an AWS account and sign in. 

## Step 1: Subscribe on the AWS Marketplace
Solodev is a professionally managed, enterprise-class Digital Customer Experience Platform and content management system (CMS). Before launching one of our products, you'll first need to subscribe to Solodev on the AWS Marketplace. Click the button below to get started:

[!button variant="warning" target="blank" text="Subscribe Now"](https://aws.amazon.com/marketplace/pp/prodview-gfsp76d4g66te)

Already have a Solodev license? Call 1-800-859-7656 and we’ll activate your subscription for you.

<img src="../../images/cmsenterpriseawssubscribe1.png" alt="CMSEnterpriseSubscribe" style="width: 100%; display: block"></a>

## Step 2: Configure Your VPC and EC2 Key Pair
Please note that both a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">VPC</a> and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html">EC2 Key Pair</a> must be configured within the region you intend to launch your stack. If the following items are already created, you can skip directly to launch.

## Step 3: Launch your CloudFormation Stack
Once you’ve configured your **VPC** and **EC2 Key Pair**, you can launch your CloudFormation stack. Select the AWS region of your choice below:

### Confirm Subscription
Click on the "Continue to Subscribe" link within the AWS Marketplace listing. Once your subscription is processed, you will see confirmation and the "Continue to Configuration" button.

### Configure Solodev CMS Enterprise Edition
Specify the basic configurables such as the software version and the region you wish to launch the stack. Click on the "Continue to Launch" button to proceed.

### Launch Solodev CMS Enterprise Edition
Confirm your configurations and choose "Launch CloudFormation" within the "Choose Action" field. Click on the "Launch" button to continue to CloudFormation.

## Step 4: Fill Out the CloudFormation Stack Wizard

### Continue with the preselected CloudFormation Template
The Amazon S3 template URL (used for the CloudFormation configuration) should be preselected. Click "Next" to continue.

### Specify Details
The following parameters must be configured to launch your Solodev CMS CloudFormation stack:

<img src="../../images/parameters-solodev-cms-opsworks.jpg" alt="Parameters " style="width: 100%; display: block"></a>

**Parameter Description** | **Description** 
:--- | ---
Stack name | The name of your stack (set to "solodev-cms-opsworks" by default). Please note, the name must be all lowercase.

###  Network Setup
=== VPCID 
Choose which VPC the application should be deployed to
=== Subnets
Choose at least two public subnets for this application
=== InstanceType 
The EC2 instance type you wish to launch
=== InstanceCount 
Number of instances behind load balancer. Minimum 2 required for high availability.
=== KeyName 
Name of an existing EC2 KeyPair to enable SSH access to the instances
===

### CMS Settings
=== AdminUser
The solodev admin username
=== AdminPassword
The solodev admin password
=== DatabasePassword
The database root password
=== StorageEncrypted
Enable encryption for both Database (RDS) and Filesystem (EFS). True or False.
===

### Optional: SSL Configuration
=== FQDN
URL for app. FQDN must be pointed to CNAME of ALB.
=== CertificateArn
CertificateArn for SSL cert that matches the FQDN above. Please visit the AWS Certificate Manager.
===

### Optional: Advanced
=== RestoreBucketName
Name of S3 bucket containing files for restore
=== CookbookURL
<a href="https://s3.amazonaws.com/solodev-aws-ha/cookbooks.tar.gz">https://s3.amazonaws.com/solodev-aws-ha/cookbooks.tar.gz</a> | Download and host on your own S3 bucket or copy this URL.
=== DeletionPolicy
Experimental: Deletion Policy (Retain, Delete, Snapshot)
===

### Specify Options
Generally speaking, no additional options need to be configured. If you are experiencing continued problems installing the software, disable "Rollback on failure" under the "Advanced" options. This will allow for further troubleshooting if necessary. Click on the "Next" button to continue.

### Review
Review all CloudFront details and options. Ensure that the "I acknowledge that AWS CloudFormation might create IAM resources with custom names" checkbox is selected as well as the "I acknowledge that AWS CloudFormation might require the following capability: CAPABILITY_AUTO_EXPAND" checkbox. Click on the "Create" button to launch your stack.

## Step 5: Monitor the CloudFormation Stack Creation Process
Upon launching your CloudFormation stack, you will be able to monitor the installation logs under the "Events" tab. The CloudFormation template will launch several stacks related to your Solodev instance including EFS, EDS, and EC2. If you encounter any failures during this time, please visit the <a href="https://github.com/solodev/aws/wiki/Common-Issues">Common Issues</a> page to begin troubleshooting.

## Step 6: View CloudFormation Stack Outputs
If your stack builds successfully, you will see the green "CREATE_COMPLETE" message. Click on the primary stack and view the "Outputs" tab. You will find the load balancer URL for the Solodev backend. Point both your primary domain (mydomain.com) and a dedicated backend domain/subdomain (solodev.mydomain.com) to this URL.

## Step 7: Login to Solodev
Visit either the load balancer URL or the backend domain you configured in Step 7. Log-in to Solodev using the username "solodev" and the password you configured in Step 5.

## Support
Houston, we have no problems… because Solodev Customer Care has your back at every step! From our world-class HelpDesk to our focused training sessions, you’ve got the best team on the ground to get you to the stars.

Solodev Customer Care Includes

* 24x7x365 U.S. based human support
* Online HelpDesk ticketing
* Phone and email support
* Live training courses
* Over 300 pages of searchable documentation and tutorials

To learn more about our add-on support options, call 1-800-859-7656 to speak with one of our Solodev Customer Care Specialists.

## Developers
Are you a Solodev Developer? Launch a development stack in your AWS account using the below links. Please note, the builds will only be successful for authorized Solodev Developers.

* <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-enterprise&templateURL=https://s3.amazonaws.com/solodev-cms/cloudformation/solodev-enterprise-opsworks.yaml">Launch Solodev Enterprise OpsWorks</a>
* <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-enterprise-byol&templateURL=https://s3.amazonaws.com/solodev-cms/cloudformation/solodev-enterprise-opsworks-byol.yaml">Launch Solodev Enterprise OpsWorks BYOL</a>
## Need Help?
Solodev is a professionally managed, enterprise-class solution, and our team of certified engineers are here to support your success. While our self-serve options are easy to launch, you’ve always got a co-pilot at the helm. If you have any questions – or if you already have a Solodev license and need support with your AWS subscription – call 1-800-859-7656 and we’ll help you get to the launchpad.

© 2019 Solodev. All rights reserved worldwide. And off planet.

Errors or corrections? Email us at help@solodev.com.