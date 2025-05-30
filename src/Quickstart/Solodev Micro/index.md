# 

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/micro-logo.png" alt="CMS Micro Logo" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">CMS Micro</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">The perfect launch pad for small development or proof of concept (PoC) projects.</p>
    </div>
  </div>
  <a class="btn-orange-lg" href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" rel="noopener noreferrer" target="_blank">SUBSCRIBE <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

CMS Micro offers best-of-breed content management features in a streamlined package. Build amazing websites with total control and flexibility – and deploy rapidly on a single server with a secure, reliable, and affordable hosting infrastructure powered by the AWS Cloud.

## Prerequisites

* Have an existing <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account :icon-link-external:</a>
* Have an existing <a href="https://console.aws.amazon.com/ec2/" target="_blank">EC2 Pair Key <span>:icon-link-external:</span></a>
* Preexisting VPC <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-vpc&templateURL=https://s3.amazonaws.com/solodev-cms/cloudformation/infrastructure/vpc.yaml" target="_blank" class="btn-orange-sm mt-2" style="margin-left: .5rem;">LAUNCH STACK <span>:icon-play:</span></a>

!!!Note:
If you already have a subscription to **CMS Micro**, [click here](#launch-software).
!!!

## CMS Subscription

The following steps cover the setup of the **CMS Micro** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process. CMS Micro is available as a monthly subscription on the AWS Marketplace. The subscription includes the software's operational and infrastructure costs for running on AWS.

1. Subscribe to Solodev on the AWS Marketplace. <a href="https://aws.amazon.com/marketplace/pp/prodview-vfh6feu6ofujq" target="_blank" class="btn-orange-sm" style="margin-left: 1rem;">SUBSCRIBE <span>:icon-link-external:</span></a>
2. Review and accept the **"Terms and Conditions"**.
3. Click **"Continue to Configuration"**.

<p><img src="/static/images/micro/cms-micro-subscribe-terms.jpg" alt="CMS Micro Continue to Configuration" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span class="text-teal">Configure Software</span>

1. Choose a fulfillment option and software version to launch this software.

<p><img src="/static/images/quickstart/cms-configure.jpg" alt="CMS Micro Configure" style="width: 35%;"></p>

**Name** | **Description** 
:--- | ---
Fulfillment option | Select a fulfillment option. Default: Amazon Machine Image (AMI).
Software version | Select the software version. The latest version of Solodev CMS Micro is always recommended.
Region | Select the AWS Region.

2. Click **"Continue to Launch."**

<p><img src="/static/images/micro/cms-micro-continue-to-launch.jpg" alt="CMS Micro continue to launch" style="width: 80%;"></p>

!!!danger Important:
On the next screen, click on **"Usage Instructions"** and then select the Quickstart link to continue the installation.
!!!

### <span class="text-teal">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

{% tabs %}

{% tab title="CloudFormation" %}

To continue the installation, click the **Launch** button below and follow the outlined steps.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-micro&templateURL=https://solodev-cms.s3.amazonaws.com/cloudformation/solodev-micro-linux.yaml" rel="noopener noreferrer" target="_blank"  class="btn-orange-lg mb-2">LAUNCH CMS MICRO <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!NOTE:
If your AWS region is different from `us-east-1`, make sure to select your specific region from the top menu.
!!!

#### Create Stack

1. Create a stack.

<p><img src="/static/images/micro/micro-create-stack.jpg" alt="CMS Micro Create Stack" style="width: 90%;"></p>

2. Click <span class="text-orange">**Next**</span>.

#### Stack Details

##### Provide a stack name

1. Provide a stack name. Stack name must be 1 to 128 characters, start with a letter, and only contain alphanumeric characters.

<p><img src="/static/images/micro/micro-stack-name.jpg" alt="CMS Micro stack name" style="width: 62%;"></p>

##### Parameters

1. Specify the parameters in the setup section.

<p><img src="/static/images/micro/micro-params-setup.jpg" alt="CMS Micro params setup" style="width: 50%;"></p>

Name   | Description
---    | ---
VPCID | Choose which VPC the Application should be deployed to. <br><br>An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your CMS Micro in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console. For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions :icon-link-external:</a>.
PublicSubnetID | The ID of the public subnet in Availability Zone 1 in your existing VPC (e.g., subnet-a0246dcd). <br><br>A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>.
InstanceType | CMS Micro runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu. <br><br>To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances. <br><br>An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.
AmiAlias | An AMI Alias refers to a user-defined name or identifier for an Amazon Machine Image (AMI) that simplifies the process of referring to an AMI. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">Click here :icon-link-external:</a> to learn more about AMIs.
WebsiteUrl | Name of initial Solodev website.
HostVolumeSize | Size in GB of root volume.
DeletionPolicy | A Deletion Policy is a configuration that you can set for resources in AWS CloudFormation templates to specify what should happen to the resource when its stack is deleted.

2. Optional: SSO.

<p><img src="/static/images/micro/micro-params-optional.jpg" alt="CMS Micro params optional" style="width: 28%;"></p>

Name   | Description
---    | ---
SsoProviderUrl | Issuer URL of your OpenID Connect provider.
SsoClientId | Unique identifier assigned to a client application that is registered with an AWS Single Sign-On (SSO) service, used to authenticate and authorize the application to access SSO resources.
SsoClientSecret | Confidential key assigned to a client application registered with an AWS Single Sign-On (SSO) service, used in conjunction with the SSO Client ID to authenticate the application and secure access to SSO resources.

3. Click <span class="text-orange">**Next**</span>.

#### Configure Stack Options

1. Add a new tag. **This step is optional**.

Tags (key-value pairs) are used to apply metadata to AWS resources, which can help in organizing, identifying, and categorizing those resources. You can add up to 50 unique tags for each stack. If you need more information about tags, click here.

<p><img src="/static/images/quickstart/stack-tags.jpg" alt="CMS Micro tags" style="width: 80%;"></p>

2. Specify an existing AWS Identity and Access Management (IAM) service role that CloudFormation can assume. **This step is optional**.

<p><img src="/static/images/quickstart/stack-permissions.jpg" alt="CMS Micro permissions" style="width: 80%;"></p>

3. Select the stack failure options.

<p><img src="/static/images/quickstart/stack-failure.jpg" alt="CMS Micro failure" style="width: 80%;"></p>

Name   | Description
---    | ---
Behavior on provisioning failure | Specify the roll back behavior for a stack failure..
Delete newly created resources during a rollback | Specify whether resources that were created during a failed operation should be deleted regardless of their deletion policy.

To learn more about the stack failure options, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-failure-options.html" target="_blank">click here :icon-link-external:</a>.

#### Advanced options

1. You can set additional options for your stack, like notification options and a stack policy. For more information, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-add-tags.html" target="_blank">click here :icon-link-external:</a>.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="CMS Micro advanced options" style="width: 50%;"></p>

2. Click <span class="text-orange">**Next**</span>.

### Review and create

1. Review your settings.

2. Acknowledge the AWS CloudFormation terms.

<p><img src="/static/images/micro/micro-stack-capabilities.jpg" alt="CMS Micro capabilities" style="width: 62%;"></p>

3. Click <span class="text-orange">**Submit**</span>.

### Stacks

1. <span class="text-orange">**Watch your CMS being created!**</span> Once the status changes from **CREATE_IN_PROGRESS** to **CREATE_COMPLETE**, you can access your CMS.

<p><img src="/static/images/micro/micro-stack.jpg" alt="CMS Micro Stack" style="width: 62%;"></p>

2. Click on the **Outputs** tab and copy the AdminUrl value.

<p><img src="/static/images/quickstart/stack-outputs.jpg" alt="CMS Micro Stack Outputs" style="width: 62%;"></p>

3. Open your preferred browser and paste the AdminUrl value to access the CMS login page. Use the **Admin Username** and **Admin Password** provided in the stacks output to log in.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 50%;"></p>

{% endtab %}

{% tab title="Launch through EC2" %}

#### Choose an Action

1. Select **Launch through EC2**.

<p><img src="/static/images/quickstart/actions-ec2.jpg" alt="CMS Micro Actions" style="width: 74%;"></p>

2. Click **Launch**.

#### Launch an instance

Create virtual machines, or instances, that run on the AWS Cloud. Quickly get started by following the simple steps below.

1. **Name and tags**. Give your instance a **name**. You can also add additional tags (Optional).

<p><img src="/static/images/quickstart/name-instance.jpg" alt="Solodev CMS Micro Name" style="width: 55%;"></p>

!!!NOTE:
A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define.
!!!

2. **Application and OS Images (Amazon Machine Image)**. An AMI contains the software configuration (operating system (OS), application server, and applications) required to launch your instance.

<p><img src="/static/images/micro/cms-micro-image-instance.jpg" alt="Solodev CMS Micro Amazon Machine Image" style="width: 55%;"></p>

For more information about Amazon Machine Image, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here :icon-link-external:</a>.

3. **Instance Type**. Select an instance type that meets your computing, memory, networking, or storage needs.

<p><img src="/static/images/quickstart/type-instance-large.jpg" alt="Solodev CMS Micro Instance Type" style="width: 55%;"></p>

To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.

!!!NOTE:
Solodev recommends t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu.
!!!

4. **Key Pair**. You can use a key pair to securely connect to your instance. Ensure that you have access to the selected key pair before you launch the instance.
  
<p><img src="/static/images/quickstart/key-pair-instance.jpg" alt="Solodev CMS Micro Key Pair" style="width: 55%;"></p>

!!!NOTE:
An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verifies a user's identity when connecting or communicating with an EC2 instance. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.
!!!

5. **Network Settings**. Here you can create or select an existing security group, create an instance that can connect using SSH, and more.

<p><img src="/static/images/quickstart/network-instance.jpg" alt="Solodev CMS Micro Network Settings" style="width: 55%;"></p>

6. **Configure storage**. Specify the storage options for the instance.

<p><img src="/static/images/quickstart/storage-instance.jpg" alt="Solodev CMS Micro Storage" style="width: 55%;"></p>

For more information about storage, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Storage.html?icmpid=docs_ec2_console" target="_blank">click here :icon-link-external:</a>.

7. Click **Launch Instance**.

<p><img src="/static/images/quickstart/launch-instance.jpg" alt="Solodev CMS Micro Launch Instance"></p>

8. You will get a success message. Click on the ID to access your EC2 Instance.

<p><img src="/static/images/quickstart/success-instance.jpg" alt="Solodev CMS Micro Success Message" style="width: 40%;"></p>

#### EC2 Instance

1. Check the **Instance State** and **Status Check** of your instance. Once your instance state changed from **Pending** to **Running**, click on the instance you created to access it.

<p><img src="/static/images/quickstart/cms-instance-state.jpg" alt="Solodev CMS Micro Instance" style="width: 40%;"></p>

2. Click on your **Public IPv4 address** to access the login page.

<p><img src="/static/images/quickstart/cms-public-address.jpg" alt="Solodev CMS Micro Public Address" style="width: 25%;"></p>

3. To log in, use **solodev** as the username and your **instance ID** as the password.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 45%;"></p>

{% endtab %}

{% tab title="Launch from Website" %}

#### Choose an Action

1. Select **Launch from Website**

<p><img src="/static/images/quickstart/cms-launch-from-website.jpg" alt="CMS Micro Choose Actions" style="width: 55%;"></p>

2. **EC2 Instance Type**. CMS Micro runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu. 

<p><img src="/static/images/quickstart/cms-instance.jpg" alt="CMS Micro EC2 Instance Type" style="width: 35%;"></p>

To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.

3. **VPC Settings**. An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your CMS Micro in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console.

<p><img src="/static/images/quickstart/cms-vpc.jpg" alt="CMS Micro VPC Settings" style="width: 35%;"></p>

For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions :icon-link-external:</a>.

4. **Subnet Settings**. A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. 

<p><img src="/static/images/quickstart/cms-subnet.jpg" alt="CMS Micro Subnet Settings" style="width: 35%;"></p>

If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>.

5. **Security Group Settings**. A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided. Name your security group and give it a description.

<p><img src="/static/images/quickstart/security-groups.jpg" alt="CMS Micro Security Groups" style="width: 60%;"></p>

To learn more about security groups, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here :icon-link-external:</a>.

6. **Key Pair Settings**. An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. 

<p><img src="/static/images/quickstart/cms-key-pair.jpg" alt="CMS Micro Key Pair Settings" style="width: 63%;"></p>

If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.

7. Click <span class="text-orange">**Launch**</span>.

8. You will receive a success message to view your instance. Click on **EC2 Console**.

<p><img src="/static/images/quickstart/cms-success-launch.jpg" alt="CMS Micro Launch Message" style="width: 44%"></p>

#### EC2 Instance

1. Check the **Instance State** and **Status Check** of your instance. Once your instance state changed from **Pending** to **Running**, click on the instance you created to access it.

<p><img src="/static/images/quickstart/cms-instance-state.jpg" alt="Solodev CMS Micro Instance" style="width: 40%;"></p>

2. Click on your **Public IPv4 address** to access the login page.

<p><img src="/static/images/quickstart/cms-public-address.jpg" alt="Solodev CMS Micro Public Address" style="width: 25%;"></p>

3. To log in, use **solodev** as the username and your **instance ID** as the password.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 45%;"></p>

{% endtab %}

{% endtabs %}

## Next Steps

### Add your first website

Please [follow this link](/workspace/websites/add-website/) to learn more about Solodev and to learn how to build your first website.

### Troubleshooting

==- **When I open the link after launching, nothing comes up.**
Under your Security Group settings, make sure ports 443 and 80 are open to 0.0.0.0/0. If you selected Launch through EC2 and did not create a new Security Group, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here :icon-link-external:</a>.
===

==- **I am unable to log in using SSH.**
Make sure to add your IP address as an inbound rule on the Web Security Group for port 22. For more information, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here :icon-link-external:</a>
===

<style>
  /* Headers */
  .header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 1.5rem;
    margin-bottom: 2rem;
    background-color: #eef6ff;
  }
  .header .inner {
    display: flex;
    align-items: center;
    justify-content: start;
  }
  .header img {
    width: 80px;
  }
  .header h1 {
    margin-left: 0;
    font-size: 2rem;
    margin-bottom: 0.25rem;
  }
  .header p {
    padding-left: 2rem;
    margin-bottom: 0;
  }
  /* Dark Headers */
  .dark .header {
    background-color: #fff;
  }
  .dark .header h1,
  .dark .header p {
    color: #222;
  }
  .dark .pluggable .rounded-t a.text-gray-500 {
    color: #fff;
  }
</style>