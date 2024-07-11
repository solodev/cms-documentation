# Solodev CMS Micro Edition

<p>The perfect launch pad for small development or proof of concept (PoC) projects, Solodev CMS Micro Edition offers best-of-breed content management features in a streamlined package. Build amazing websites with total control and flexibility – and deploy rapidly on a single server with a secure, reliable, and affordable hosting infrastructure powered by the AWS Cloud.</p>

## Prerequisites

### Subscribe on the AWS Marketplace

Before launching one of our products, you'll first need to subscribe to Solodev on the AWS Marketplace. Click the button below to get started:

<div class="border p-4" style="height: 137px; margin-bottom: 20px; align-items: center; display: flex;">
  <div style="width: 50%; float: left; text-align: center;">
    <img src="../../images/quickstart/aws-marketplace-logo.jpg" alt="AWS Marketplace Logo" style="width: 70%;">
  </div>
  <div style="width: 50%; float: left; text-align: center;">
    <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" rel="noopener noreferrer" target="_blank"><img src="../../images/quickstart/subscribe-large.jpg" style="width: 50%;"></a>
  </div>
</div>

If you already have a subscription to Solodev CMS Micro Edition, [click here](#aws-setup-with-subscription).

If you do not have a subscription, please follow the instructions under AWS Setup below.

## AWS Setup

The following steps cover the setup of the **Solodev CMS Micro Edition** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process.

<!-- <p><img src="../../images/quickstart/micro/cms-micro-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%; padding-left: 1rem;"></p> -->

### Subscribe to this Software

By subscribing, you gain access to a comprehensive suite of tools and features designed to enhance your productivity and streamline your workflow.

<p><img src="../../images/quickstart/micro/cms-micro-subscribe-terms.jpg" alt="CMS Micro Subscribe" style="width: 80%;"></p>

1. Review and accept the **"Terms and Conditions"**.
2. Click **"Continue to Configuration"**.

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### Configure this Software

Choose a fulfillment option, the software version and the AWS Region where you wish to launch your stack.

<p><img src="../../images/quickstart/micro/cms-micro-configure.jpg" alt="CMS Micro Configure"></p>

1. Select a fulfillment option. Fulfillment options relate to how software products are delivered and deployed. This software is packaged as a virtual appliance and deployed on Amazon EC2 instances.
2. Select a software version. The latest version of Solodev CMS Micro is always recommended.
3. When selecting an available AWS Region for hosting, you may want to consider a region that is closer to your users to help reduce your network latency.
4. Click **"Continue to Launch."**

### Launch this software

Review the launch configuration details and follow the instructions to launch this software.

1. **Choose an Action**
2. **Select an EC2 Instance Type**
3. **Select a VPC**
4. **Select a Subnet**
5. **Configure a Security Group**
6. **Select a Key Pair**
7. Click **"Launch"**.

#### Choose an Action

There are two options for configuring your Solodev CMS Micro: Launch from Website or Launch through EC2. Select one from the menu.

<p><img src="../../images/quickstart/micro/cms-micro-actions.jpg" alt="CMS Micro Actions"></p>

!!!NOTE:
The following steps cover the configuration when selecting Launch from Website, which is recommended for first-time subscribers. If you already have your VPC and other variables configured, you can choose Launch through EC2 for more rapid deployment.
!!!

#### EC2 Instance Type

Solodev CMS Micro Edition runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu. 

<p><img src="../../images/quickstart/micro/cms-micro-instance.jpg" alt="CMS Micro EC2 Instance Type"></p>

To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

#### VPC Settings

An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your Solodev CMS Micro Edition in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console.

<p><img src="../../images/quickstart/micro/cms-micro-vpc.jpg" alt="CMS Micro VPC Settings"></p>

For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions</a>.

**Subnet Settings**

A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. 

<p><img src="../../images/quickstart/micro/cms-micro-subnet.jpg" alt="CMS Micro Subnet Settings"></p>

If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here</a>.

**Security Group Settings**

A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided.

Name your security group and give it a description.

<p><img src="../../images/quickstart/micro/security-groups.jpg" alt="CMS Micro Security Groups" style="width: 60%;"></p>

To learn more about security groups, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

**Key Pair Settings**

An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. 

<p><img src="../../images/quickstart/micro/cms-micro-key-pair.jpg" alt="CMS Micro Key Pair Settings" style="width: 63%;"></p>

If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.

## AWS Setup with Subscription

If you already have a subscription, follow these steps to install **Solodev CMS Micro Edition**.

<!-- <p><img src="../../images/quickstart/micro/cms-micro-view-subscription.jpg" alt="Solodev CMS Micro View Subscription" style="width: 75%; padding-left: 1rem;"></p> -->

### Manage subscriptions

Locate CMS Micro AWS product card. Click **Launch new instance**.

<p><img src="../../images/quickstart/micro/cms-micro-subscription.jpg" alt="Solodev CMS Micro Subscription" style="width: 35%;"></p>

!!!NOTE:
You can also **Manage** the subscription configuration on this step.
!!!

### Configure this software

Select a delivery method, the software version and the AWS Region where you wish to launch your stack.

<p><img src="../../images/quickstart/micro/cms-micro-new-instance.jpg" alt="CMS Micro New Instance" style="width: 70%;"></p>

1. Select a delivery method. Delivery methods relate to how software products are delivered and deployed. This software is packaged as a virtual appliance and deployed on Amazon EC2 instances.
2. Select a software version. The latest version of Solodev CMS Micro is always recommended.
3. When selecting an available AWS Region for hosting, you may want to consider a region that is closer to your users to help reduce your network latency.
4. Click **Continue to launch through EC2**.

### Launch an instance

Create virtual machines, or instances, that run on the AWS Cloud. Quickly get started by following the simple steps below.

1. **Add Name and tags**
2. **Select Application and OS Images (Amazon Machine Image)**
3. **Select a Instance Type**
6. **Select a Key Pair**
7. **Network Settings**
8. **Configure storage**
9. Click **"Launch Instance"**.

#### Name and tags

Give your instance a **name**. You can also add additional tags (Optional).

<p><img src="../../images/quickstart/micro/cms-micro-name-instance.jpg" alt="Solodev CMS Micro Name" style="width: 55%;"></p>

!!!NOTE:
A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define.
!!!

#### Application and OS Images (Amazon Machine Image)

An AMI contains the software configuration (operating system (OS), application server, and applications) required to launch your instance.

<p><img src="../../images/quickstart/micro/cms-micro-image-instance.jpg" alt="Solodev CMS Micro Amazon Machine Image" style="width: 55%;"></p>

For more information about Amazon Machine Image, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here</a>.

#### Instance Type
  
Select an instance type that meets your computing, memory, networking, or storage needs.

<p><img src="../../images/quickstart/micro/cms-micro-type-instance.jpg" alt="Solodev CMS Micro Instance Type" style="width: 55%;"></p>

To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

!!!NOTE:
Solodev recommends t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu.
!!!

#### Key Pair

You can use a key pair to securely connect to your instance. Ensure that you have access to the selected key pair before you launch the instance.
  
<p><img src="../../images/quickstart/micro/cms-micro-key-pair-instance.jpg" alt="Solodev CMS Micro Key Pair" style="width: 55%;"></p>

!!!NOTE:
An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verifies a user's identity when connecting or communicating with an EC2 instance. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.
!!!

#### Network Settings

Here you can create or select an existing security group, create an instance that can connect using SSH, and more.

<p><img src="../../images/quickstart/micro/cms-micro-network-instance.jpg" alt="Solodev CMS Micro Network Settings" style="width: 55%;"></p>

#### Configure storage

Specify the storage options for the instance.

<p><img src="../../images/quickstart/micro/cms-micro-storage-instance.jpg" alt="Solodev CMS Micro Storage" style="width: 55%;"></p> 

For more information about storage, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Storage.html?icmpid=docs_ec2_console" target="_blank">click here</a>

## Troubleshooting

==- **When I open the link after launching, nothing comes up.**
Under your Security Group settings, make sure ports 443 and 80 are open to 0.0.0.0/0. If you selected Launch through EC2 and did not create a new Security Group, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.
===

==- **I am unable to log in using SSH.**
Make sure to add your IP address as an inbound rule on the Web Security Group for port 22. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>
===