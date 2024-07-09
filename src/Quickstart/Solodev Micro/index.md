# Solodev CMS Micro Edition

<div class="border p-4" style="height: 255px; margin-bottom: 20px;">
  <div style="width: 20%; float: left;">
    <p><img src="../../images/quickstart/micro/solodev-micro.png" alt="Solodev Micro Logo" style="width: 100%;"></p>
  </div>
  <div style="width: 80%; float: left; padding-left: 30px;">
    <p>The perfect launch pad for small development or proof of concept (PoC) projects, Solodev CMS Micro Edition offers best-of-breed content management features in a streamlined package. Build amazing websites with total control and flexibility – and deploy rapidly on a single server with a secure, reliable, and affordable hosting infrastructure powered by the AWS Cloud.</p>
    <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" target="_blank" class="no-link inline-flex align-middle items-center font-medium cursor-pointer transition-colors duration-200 ease-out focus:outline-none bg-blue-500 hover:bg-blue-700 text-white px-4 h-10 text-sm rounded-md"><span>Subscribe to CMS Micro Edition</span></a>
  </div>
</div>

If you already have a subscription to Solodev CMS Micro Edition, [click here](#aws-setup-with-subscription).

If you do not have a subscription, please follow the instructions under AWS Setup below.

## AWS Setup

### Product Detail

1. After subscribing to **Solodev CMS Micro Edition** on the AWS Marketplace, click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page.

<p><img src="../../images/quickstart/micro/cms-micro-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%; padding-left: 1rem;"></p>

### Subscribe to this Software

1. You will be directed to the **"Terms and Conditions"** page. Review and accept these terms.

<p><img src="../../images/quickstart/micro/cms-micro-subscribe-terms.jpg" alt="CMS Micro Subscribe" style="width: 80%; padding-left: 1rem;"></p>

2. Once accepted, you will receive a thank you message asking you to configure your software. Click the **"Continue to Configuration"** button in the top right corner.

!!!NOTE:
This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### Configure this Software

1. Select a fulfillment option, the software version and the AWS Region where you wish to launch your stack.

<p><img src="../../images/quickstart/micro/cms-micro-configure.jpg" alt="CMS Micro Configure" style="width: 80%; padding-left: 1rem;"></p>

**Name** | **Description** 
:--- | ---
Fulfillment option | Select an AMI. For more information on AMI, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here</a>.
Software version | The latest version of Solodev CMS Micro is always recommended.
Region | When selecting an available AWS Region for hosting, you may want to consider a region <br>that is closer to your users to help reduce your network latency.

2. When finished, click **"Continue to Launch."**

### Launch this software

1. Review the launch configuration details and follow the instructions to launch this software.

<div style="padding-left: 2rem;">

  #### Choose Actions

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

  A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided. To learn more, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

  <p><img src="../../images/quickstart/micro/security-groups.jpg" alt="CMS Micro Security Groups" style="width: 80%;"></p>

  **Name** | **Description** 
  :--- | ---
  Name | Name your security group
  Description | Give your security group a description

  **Key Pair Settings**

  An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. 

  <p><img src="../../images/quickstart/micro/cms-micro-key-pair.jpg" alt="CMS Micro Key Pair Settings" style="width: 80%;"></p>

  If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here</a>.

</div>

2. After configuring your software, choose **"Launch"**.

## AWS Setup with Subscription

### Product Detail

1. On the <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" target="_blank" rel="noopener noreferrer">AWS Marketplace</a>, click on **View Subscription**.

<p><img src="../../images/quickstart/micro/cms-micro-view-subscription.jpg" alt="Solodev CMS Micro View Subscription" style="width: 75%; padding-left: 1rem;"></p>

### Manage subscriptions

1. Locate CMS Micro AWS and click on **Launch new instance**.

<p><img src="../../images/quickstart/micro/cms-micro-subscription.jpg" alt="Solodev CMS Micro Subscription" style="width: 35%; padding-left: 1rem;"></p>

### Configure this software

1. Select a delivery method, the software version and the AWS Region where you wish to launch your stack.

<p><img src="../../images/quickstart/micro/cms-micro-new-instance.jpg" alt="CMS Micro New Instance" style="width: 80%; padding-left: 1rem;"></p>

**Name** | **Description** 
:--- | ---
Delivery method | Select an AMI. For more information on AMI, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here</a>.
Software version | The latest version of Solodev CMS Micro is always recommended.
Region | When selecting an available AWS Region for hosting, you may want to consider a region <br>that is closer to your users to help reduce your network latency.

2. Click on **Continue to launch through EC2**.

### Launch an instance

1. Create virtual machines, or instances, that run on the AWS Cloud. Quickly get started by following the simple steps below.

<div style="padding-left: 2rem; margin-bottom: 2rem;">

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
    
  Select an instance type that meets your computing, memory, networking, or storage needs. To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here</a>.

  <p><img src="../../images/quickstart/micro/cms-micro-type-instance.jpg" alt="Solodev CMS Micro Instance Type" style="width: 55%;"></p>

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

</div>

2. After configuring your instance, click **Launch Instance**.

## Troubleshooting

**When I open the link after launching, nothing comes up.**

Under your Security Group settings, make sure ports 443 and 80 are open to 0.0.0.0/0. If you selected Launch through EC2 and did not create a new Security Group, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>.

**I am unable to log in using SSH.**

Make sure to add your IP address as an inbound rule on the Web Security Group for port 22. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here</a>