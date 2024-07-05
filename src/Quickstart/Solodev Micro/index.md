# Solodev CMS Micro Edition

The perfect launch pad for small development or proof of concept (PoC) projects, Solodev CMS Micro Edition offers best-of-breed content management features in a streamlined package. Build amazing websites with total control and flexibility – and deploy rapidly on a single server with a secure, reliable, and affordable hosting infrastructure powered by the AWS Cloud.

## Overview

Solodev CMS Micro Edition uses a set of AWS cloud services including:

* <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html" target="_blank" rel="noopener noreferrer">Amazon Virtual Private Cloud (VPC)</a>
* <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html" target="_blank" rel="noopener noreferrer">Amazon Elastic Compute Cloud (EC2)</a>
* <a href="https://docs.aws.amazon.com/ebs/" target="_blank" rel="noopener noreferrer">Amazon Elastic Block Storage (EBS)</a>
* <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html" target="_blank" rel="noopener noreferrer">Amazon CloudWatch</a>

<p><img src="../../images/quickstart/lite/solodev-cms-lite-reference-architecture.png" alt="Solodev CMS Micro Architecture" style="width: 75%;"></p>

## Prerequisites

* Before subscribing to Solodev CMS Micro Edition, you must have an AWS account and sign in. 
* If you do not have an account, you can create one at <a href="https://aws.amazon.com/" target="blank" rel="noopener noreferrer">https://aws.amazon.com/</a>.

If you already have a subscription to Solodev CMS Micro Edition, [click here](#aws-setup-with-subscription).

If you do not have a subscription, please follow the instructions under AWS Setup below.

## AWS Setup

1. Subscribe to **Solodev CMS Micro Edition** on the AWS Marketplace by <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" target="_blank" rel="noopener noreferrer">clicking here</a>.

!!!NOTE:
If you already have an existing Solodev license, call [1-800-859-7656](tel:1-800-859-7656), and a team member will activate your subscription.
!!!

2. At the top of the AWS Marketplace listing page for the Solodev CMS Micro Edition, click the **“Continue to Subscribe”** button.

<p><img src="../../images/quickstart/micro/cms-micro-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%;"></p>

3. You will be directed to the **"Terms and Conditions"** page. Review and accept these terms.

4. Once accepted, you will receive a thank-you message asking you to configure your software. Click the **"Continue to Configuration"** button in the top right corner.

!!!NOTE:
This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

5. Select the software version and the AWS Region where you wish to launch your stack. When finished, click **"Continue to Launch."**

!!!NOTE:
The latest version of Solodev CMS Micro is always recommended. When selecting an available AWS Region for hosting, you may want to consider a region that is closer to your users to help reduce your network latency.
!!!

<p><img src="../../images/quickstart/micro/cms-micro-configure.jpg" alt="CMS Micro Configure" style="width: 80%;"></p>

6. Configure your software:

**Choose Actions**

There are two options for configuring your Solodev CMS Micro: Launch from Website or Launch through EC2. Select one from the menu.

!!!NOTE:
The following steps cover the configuration when selecting Launch from Website, which is recommended for first-time subscribers. If you already have your VPC and other variables configured, you can choose Launch through EC2 for more rapid deployment.
!!!

**EC2 Instance Type**

Solodev CMS Micro Edition runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended m3.medium server (double check this default size). Depending on your traffic needs, you can select an instance size from the available options in the menu. To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

**VPC Settings**

An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your Solodev CMS Micro Edition in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">Click here for instructions</a>.

**Subnet Settings**

A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently.  If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here</a>.

**Security Group Settings**

A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided. To learn more, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

<p><img src="../../images/quickstart/micro/security-groups.jpg" alt="CMS Micro Security Groups" style="width: 80%;"></p>

**Key Pair Settings**

An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.

7. Choose **"Launch"**.

## AWS Setup with Subscription

1. On the <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" target="_blank" rel="noopener noreferrer">AWS Marketplace</a>, click on **View Subscription**.

<p><img src="../../images/quickstart/micro/cms-micro-view-subscription.jpg" alt="Solodev CMS Micro View Subscription" style="width: 75%;"></p>

2. On the following screen, locate CMS Micro AWS and click on **Launch new instance**.

<p><img src="../../images/quickstart/micro/cms-micro-subscription.jpg" alt="Solodev CMS Micro Subscription" style="width: 35%;"></p>

3. Review the configurations and click on **Continue to launch through EC2**.

4. On the **Launch an instance** page: 

**Name and tags**

Give your instance a **name**.

A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define.

<p><img src="../../images/quickstart/micro/cms-micro-name-instance.jpg" alt="Solodev CMS Micro Name" style="width: 55%;"></p>

**Application and OS Images (Amazon Machine Image)**

An AMI contains the software configuration (operating system (OS), application server, and applications) required to launch your instance. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here</a>.

<p><img src="../../images/quickstart/micro/cms-micro-image-instance.jpg" alt="Solodev CMS Micro Amazon Machine Image" style="width: 55%;"></p>

**Instance Type**
  
Select an instance type that meets your computing, memory, networking, or storage needs. To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

<p><img src="../../images/quickstart/micro/cms-micro-type-instance.jpg" alt="Solodev CMS Micro Instance Type" style="width: 55%;"></p>

**Key Pair**

You can use a key pair to securely connect to your instance. Ensure that you have access to the selected key pair before you launch the instance.
  
!!!NOTE:
An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verifies a user's identity when connecting or communicating with an EC2 instance. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.
!!!

<p><img src="../../images/quickstart/micro/cms-micro-key-pair-instance.jpg" alt="Solodev CMS Micro Key Pair" style="width: 55%;"></p>

**Network Settings**

Here you can create or select an existing security group, create an instance that can connect using SSH, and more.

<p><img src="../../images/quickstart/micro/cms-micro-network-instance.jpg" alt="Solodev CMS Micro Network Settings" style="width: 55%;"></p>

**Configure storage**

Specify the storage options for the instance.

<p><img src="../../images/quickstart/micro/cms-micro-storage-instance.jpg" alt="Solodev CMS Micro Storage" style="width: 55%;"></p>

5. After configuring your instance, click **Launch Instance**.

## Troubleshooting

**When I open the link after launching, nothing comes up.**

Under your Security Group settings, make sure ports 443 and 80 are open to 0.0.0.0/0. If you selected Launch through EC2 and did not create a new Security Group, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

**I am unable to log in using SSH.**

Make sure to add your IP address as an inbound rule on the Web Security Group for port 22. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>