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

6. Confirm the following configurations:

**Choose Actions**

Choose between **Launch from Website** or **Launch through EC2**.
  - If you select **Launch through EC2** click the **Launch** button.
  - If you choose **Launch from Website**, please follow these steps:

**EC2 Instance Type**

Select an EC2 Instance Type. To learn more about  <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">EC2 instances click here</a>.

**VPC Settings**

Select a previously created VPC from the dropdown.

!!!NOTE:
If you don’t have a VPC, you will need to create one in your VPC Console. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">Click here for instructions</a>.
!!!

**Subnet Settings**

Select a previously created Subnet from the dropdown.

!!!NOTE:
If you don’t have a Subnet, you will need to create one in your Subnet Console. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">Click here for instructions</a>.
!!!

**Security Group Settings**

A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group based on seller-recommended settings or choose one of your existing groups. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">Learn more</a>.

**Key Pair Settings**

To ensure that no other person has access to your software, the software installs on an EC2 instance with an EC2 key pair that you created.

!!!NOTE:
If you don’t have a Key Pair, you will need to create one in your Key Pair Console. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">Click here for instructions</a>.
!!!

7. Choose **"Launch"**.

## Troubleshooting

**When I open a the link nothing comes up?**

Check your security group on the ec2 and if you did not create the recommended security group click here, then make sure ports 443 and 80 are open to 0.0.0.0/0.

**I cant login with SSH.**

Make sure to add your IP as a inbound rule on the web security group for port 22.