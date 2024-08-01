# 

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div  style="display: flex; align-items: center; justify-content: start;">
    <img src="../../images/quickstart/micro/solodev-micro.png" alt="CMS Micro Logo" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">CMS Micro AWS</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">The perfect launch pad for small development or proof of concept (PoC) projects.</p>
    </div>
  </div>
  <a href="https://aws.amazon.com/marketplace/server/procurement?productId=prod-iwk56zq73bwqs" rel="noopener noreferrer" target="_blank" style="background-color: #f99700; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;">SUBSCRIBE <span style="padding-left: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

## Product Overview

<p>CMS Micro AWS offers best-of-breed content management features in a streamlined package. Build amazing websites with total control and flexibility – and deploy rapidly on a single server with a secure, reliable, and affordable hosting infrastructure powered by the AWS Cloud.</p>

## Prerequisites

* You need to sign up for an <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account</a>.
* Subscribe to Solodev on the <a href="https://aws.amazon.com/marketplace/server/procurement?productId=prod-iwk56zq73bwqs" rel="noopener noreferrer" target="_blank">AWS Marketplace</a>. 
* If you already have a subscription, simply click **Launch new instance** on CMS Micro AWS, and then follow the instructions provided  [here](#configure-software).

<!-- <p><img src="../../images/quickstart/micro/cms-micro-subscription.jpg" alt="Solodev CMS Micro Subscription" style="width: 35%;"></p> -->

## CMS subscription

The following steps cover the setup of the **CMS Micro AWS** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process.

<!-- <p><img src="../../images/quickstart/micro/cms-micro-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%; padding-left: 1rem;"></p> -->

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Subscribe to this Software</span>

CMS Micro AWS is available as a monthly subscription on the AWS Marketplace. The subscription includes the software's operational and infrastructure costs for running on AWS.

1. Review and accept the **"Terms and Conditions"**.
2. Click **"Continue to Configuration"**.
<p><img src="../../images/quickstart/micro/cms-micro-subscribe-terms.jpg" alt="CMS Micro Continue to Configuration" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Configure Software</span>

1. Choose a fulfillment option and software version to launch this software.

<p><img src="../../images/quickstart/micro/cms-micro-configure.jpg" alt="CMS Micro Configure"></p>

**Name** | **Description** 
:--- | ---
Fulfillment option | Select a fulfillment option. Default: Amazon Machine Image (AMI).
Software version | Select the software version. The latest version of Solodev CMS Micro is always recommended.
Region | Select the AWS Region.

2. Click **"Continue to Launch."**

<p><img src="../../images/quickstart/micro/cms-micro-continue-to-launch.jpg" alt="CMS Micro continue to launch" style="width: 80%;"></p>

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

{% tabs %}
{% tab title="Launch through EC2" %}

#### Choose an Action

1. Select **Launch through EC2**.

<p><img src="../../images/quickstart/micro/cms-micro-actions-ec2.jpg" alt="CMS Micro Actions" style="width: 74%;"></p>

2. Click **Launch**.

#### Launch an instance

Create virtual machines, or instances, that run on the AWS Cloud. Quickly get started by following the simple steps below.

1. **Name and tags**. Give your instance a **name**. You can also add additional tags (Optional).

<p><img src="../../images/quickstart/micro/cms-micro-name-instance.jpg" alt="Solodev CMS Micro Name" style="width: 55%;"></p>

!!!NOTE:
A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define.
!!!

2. **Application and OS Images (Amazon Machine Image)**. An AMI contains the software configuration (operating system (OS), application server, and applications) required to launch your instance.

<p><img src="../../images/quickstart/micro/cms-micro-image-instance.jpg" alt="Solodev CMS Micro Amazon Machine Image" style="width: 55%;"></p>

For more information about Amazon Machine Image, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here</a>.

3. **Instance Type**. Select an instance type that meets your computing, memory, networking, or storage needs.

<p><img src="../../images/quickstart/micro/cms-micro-type-instance.jpg" alt="Solodev CMS Micro Instance Type" style="width: 55%;"></p>

To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

!!!NOTE:
Solodev recommends t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu.
!!!

4. **Key Pair**. You can use a key pair to securely connect to your instance. Ensure that you have access to the selected key pair before you launch the instance.
  
<p><img src="../../images/quickstart/micro/cms-micro-key-pair-instance.jpg" alt="Solodev CMS Micro Key Pair" style="width: 55%;"></p>

!!!NOTE:
An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verifies a user's identity when connecting or communicating with an EC2 instance. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.
!!!

5. **Network Settings**. Here you can create or select an existing security group, create an instance that can connect using SSH, and more.

<p><img src="../../images/quickstart/micro/cms-micro-network-instance.jpg" alt="Solodev CMS Micro Network Settings" style="width: 55%;"></p>

6. **Configure storage**. Specify the storage options for the instance.

<p><img src="../../images/quickstart/micro/cms-micro-storage-instance.jpg" alt="Solodev CMS Micro Storage" style="width: 55%;"></p>

For more information about storage, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Storage.html?icmpid=docs_ec2_console" target="_blank">click here</a>

7. Click **Launch Instance**.

<p><img src="../../images/quickstart/micro/cms-micro-launch-instance.jpg" alt="Solodev CMS Micro Launch Instance"></p>

8. You will get a success message. Click on the ID to access your EC2 Instance.

<p><img src="../../images/quickstart/micro/cms-micro-success.jpg" alt="Solodev CMS Micro Success Message" style="width: 40%;"></p>

#### EC2 Instance

1. Check the **Instance State** and **Status Check** of your instance. 

<p><img src="../../images/quickstart/micro/cms-micro-instance-state.jpg" alt="Solodev CMS Micro Instance" style="width: 40%;"></p>

2. Once your instance state changed from **Pending** to **Running**, you can click on your **Public IPv4 address** to access it.

<p><img src="../../images/quickstart/micro/cms-micro-public-address.jpg" alt="Solodev CMS Micro Public Address"></p>

{% endtab %}

{% tab title="Launch from Website" %}

#### Choose an Action

1. Select **Launch from Website**

<p><img src="../../images/quickstart/micro/cms-micro-actions-website.jpg" alt="CMS Micro Choose Actions" style="width: 55%;"></p>

2. **EC2 Instance Type**. CMS Micro AWS runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu. 

<p><img src="../../images/quickstart/micro/cms-micro-instance.jpg" alt="CMS Micro EC2 Instance Type"></p>

To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

3. **VPC Settings**. An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your CMS Micro AWS in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console.

<p><img src="../../images/quickstart/micro/cms-micro-vpc.jpg" alt="CMS Micro VPC Settings"></p>

For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions</a>.

4. **Subnet Settings**. A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. 

<p><img src="../../images/quickstart/micro/cms-micro-subnet.jpg" alt="CMS Micro Subnet Settings"></p>

If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here</a>.

5. **Security Group Settings**. A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided. Name your security group and give it a description.

<p><img src="../../images/quickstart/micro/security-groups.jpg" alt="CMS Micro Security Groups" style="width: 60%;"></p>

To learn more about security groups, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

6. **Key Pair Settings**. An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. 

<p><img src="../../images/quickstart/micro/cms-micro-key-pair.jpg" alt="CMS Micro Key Pair Settings" style="width: 63%;"></p>

If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.

7. Click **Launch**.

<p><img src="../../images/quickstart/micro/cms-micro-launch-from-website.jpg" alt="CMS Micro Launch"></p>

{% endtab %}

{% endtabs %}

## Next Steps

### Login to Solodev

Visit the IP address or the backend domain you previously configured. Log in to Solodev using the username and the password you configured on your stack.

<p><img src="../../images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 60%;"></p>

### Add your First Website

Please [follow this link](/workspace/websites/website-overview/add-website/) to learn more about Solodev and to learn how to build your first website.

### Troubleshooting

==- **When I open the link after launching, nothing comes up.**
Under your Security Group settings, make sure ports 443 and 80 are open to 0.0.0.0/0. If you selected Launch through EC2 and did not create a new Security Group, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.
===

==- **I am unable to log in using SSH.**
Make sure to add your IP address as an inbound rule on the Web Security Group for port 22. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>
===