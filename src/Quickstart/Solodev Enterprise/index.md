# 

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/enterprise-logo.jpg" alt="CMS Enterprise Logo" style="width: 80px;">
    <div>
      <h1>CMS Enterprise</h1>
      <p style="margin-bottom: .5rem;">An enterprise-grade content management system built from the ground up for <br>Amazon Web Services (AWS).</p>
    </div>
  </div>
  <a class="btn-orange-lg" href="https://aws.amazon.com/marketplace/pp/prodview-btylxhjxu6pew" rel="noopener noreferrer" target="_blank">SUBSCRIBE <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

Solodev CMS Enterprise is designed for high-availability websites and apps that require a secure, scalable, and redundant infrastructure powered by the AWS Cloud. Solodev CMS Enterprise deploys a cluster of three servers, complete with load balancing and auto-scaling services. This architecture allows your websites and apps to meet the most demanding traffic while maintaining the highest levels of uptime.

<div style="overflow: hidden; margin-bottom: 1.5rem;">
  <div style="float: left; width: 50%; padding-right: 15px;">
    <h2>Prerequisites</h2>
    <ul>
      <li>Have an existing <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#4284fb" style="display: inline; vertical-align: middle; margin-left: .5rem;"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></a></li>
      <li>Have an existing <a href="https://console.aws.amazon.com/ec2/" target="_blank">EC2 Pair Key <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#4284fb" style="display: inline; vertical-align: middle; margin-left: .5rem;"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></a></li>
      <li>Preexisting VPC <a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-vpc&templateURL=https://s3.amazonaws.com/solodev-cms/cloudformation/infrastructure/vpc.yaml" target="_blank" class="btn-orange-sm mt-2" style="margin-left: .5rem;">LAUNCH STACK <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16" fill="#fff" style="display: inline; vertical-align: middle; margin-left: .5rem;"><path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0ZM1.5 8a6.5 6.5 0 1 0 13 0 6.5 6.5 0 0 0-13 0Zm4.879-2.773 4.264 2.559a.25.25 0 0 1 0 .428l-4.264 2.559A.25.25 0 0 1 6 10.559V5.442a.25.25 0 0 1 .379-.215Z"></path></svg></a></li>
    </ul>
  </div>

  <div style="float: right; width: 50%; padding-left: 15px;">
    <a href="/static/images/enterprise/solodev-cms-enterprise-architecture-2024.jpg" rel="noopener noreferrer" target="_blank"><img src="/static/images/enterprise/solodev-cms-enterprise-architecture-2024.jpg" style="width: 70%;"></a>
  </div>
</div>

!!!Note:
If you already have a subscription to **CMS Enterprise**, [click here](#launch-software).
!!!

## CMS Subscription

The following steps cover the setup of the **CMS Enterprise** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process. By subscribing, you gain access to a comprehensive suite of tools and features designed to enhance your productivity and streamline your workflow.

1. Subscribe to Solodev on the AWS Marketplace. <a href="https://aws.amazon.com/marketplace/pp/prodview-btylxhjxu6pew" target="_blank" class="btn-orange-sm" style="margin-left: 1rem;">SUBSCRIBE <span>:icon-link-external:</span></a>
2. Review and accept the **"Terms and Conditions"**.
3. Click **"Continue to Configuration"**.

<p><img src="/static/images/enterprise/enterprise-configuration.jpg" alt="CMS Enterprise Configuration" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span class="text-teal">Configure Software</span>

1. Choose a fulfillment option and software version to launch this software.

<p><img src="/static/images/quickstart/cms-configure.jpg" alt="CMS Enterprise Configure" style="width: 35%;"></p>

**Name** | **Description** 
:--- | ---
Fulfillment option | Select a fulfillment option.
Software version | Select the software version. The latest version of Solodev CMS Enterprise is always recommended.
Region | Select the AWS Region.

2. Click **"Continue to Launch."**

<p><img src="/static/images/enterprise/enterprise-continue-to-launch.jpg" alt="CMS Enterprise Continue to Launch" style="width: 80%;"></p>

!!!danger Important:
On the next screen, click on **"Usage Instructions"** and then select the Quickstart link to continue the installation.
!!!

### <span class="text-teal">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

{% tabs %}

{% tab title="CloudFormation" %}

To continue the installation, click the **Launch** button below and follow the outlined steps.

<a href="https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create?stackName=solodev-enterprise&templateURL=https://solodev-cms.s3.amazonaws.com/cloudformation/solodev-cms-enterprise.yaml" rel="noopener noreferrer" target="_blank" class="btn-orange-lg mb-2">LAUNCH CMS ENTERPRISE <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>

!!!NOTE:
If your AWS region is different from `us-east-1`, make sure to select your specific region from the top menu.
!!!

#### Create Stack

1. Create a stack.

<p><img src="/static/images/enterprise/enterprise-create-stack.jpg" alt="CMS Enterprise Create Stack" style="width: 90%;"></p>

2. Click <span class="text-orange">**Next**</span>.

#### Stack Details

##### Provide a stack name

1. Provide a stack name. Stack name must be 1 to 128 characters, start with a letter, and only contain alphanumeric characters.

<p><img src="/static/images/enterprise/enterprise-stack-name.jpg" alt="CMS Enterprise stack name" style="width: 62%;"></p>

##### Parameters

1. Specify the parameters in the network settings section.

<p><img src="/static/images/enterprise/enterprise-params-network.jpg" alt="CMS Enterprise network settings" style="width: 45%;"></p>

Name   | Description
---    | ---
VPCID | Choose which VPC the Application should be deployed to. <br><br>An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your CMS Micro in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console. For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions :icon-link-external:</a>.
PublicSubnet1ID | The ID of the public subnet in Availability Zone 1 in your existing VPC (e.g., subnet-a0246dcd). <br><br>A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>.
PublicSubnet2ID | The ID of the public subnet in Availability Zone 2 in your existing VPC (e.g., subnet-b1236eea). <br><br>A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>.
InstanceType | CMS Micro runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.medium server. Depending on your traffic needs, you can select an instance size from the available options in the menu. <br><br>To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.
InstanceCount | Number of instances behind load balancer. Minimum 2 required for high availability.
KeyName | Name of an existing EC2 KeyPair to enable SSH access to the instances. <br><br>An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.
AmiAlias | An AMI Alias refers to a user-defined name or identifier for an Amazon Machine Image (AMI) that simplifies the process of referring to an AMI. <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">Click here :icon-link-external:</a> to learn more about AMIs.

2. Specify the CMS Settings.

<p><img src="/static/images/enterprise/enterprise-params-settings.jpg" alt="CMS Enterprise CMS Settings" style="width: 40%;"></p>

Name   | Description
---    | ---
AdminUser | The solodev admin username to login onto your CMS.
AdminPassword | The solodev admin password to login onto your CMS.
AdminCidrIpAccess | Please change CIDR from 127.0.0.1/32 to a specific IP or another CIDR range. For more information, [click here](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-cidr-blocks.html).
DatabaseUsername | The database admin account username.
DatabasePassword | The database root password.

3. Optional: Website Settings.

<p><img src="/static/images/enterprise/enterprise-params-settings-website.jpg" alt="CMS Enterprise CMS Network Settings Optional" style="width: 45%;"></p>

Name   | Description
---    | ---
WebsiteUrl | Name of initial Solodev website.
CertificateArn | CertificateArn for SSL cert that matches the FQDN above. Please visit the <a href="https://docs.aws.amazon.com/acm/" target="_blank">AWS Certificate Manager :icon-link-external:</a>.

4. Optional: Network Settings.

<p><img src="/static/images/enterprise/enterprise-params-settings-optional.jpg" alt="CMS Enterprise CMS Settings Optional" style="width: 50%;"></p>

Name   | Description
---    | ---
RedisEnabled | Enable Redis ElastiCache cluster.
CookbookURL | Download and host on your own S3 bucket or copy this URL.
CidrIpAccess | Public CIDR range for web servers behind load balancer.
DeletionPolicy | A Deletion Policy is a configuration that you can set for resources in AWS CloudFormation templates to specify what should happen to the resource when its stack is deleted.
StorageEncrypted | Enable encryption for both Database (RDS) and Filesystem (EFS).

4. Optional: SSO.

<p><img src="/static/images/enterprise/enterprise-params-sso-optional.jpg" alt="CMS Enterprise CMS SSO Optional" style="width: 27%;"></p>

Name   | Description
---    | ---
SsoProviderUrl | Issuer URL of your OpenID Connect provider.
SsoClientId | Unique identifier assigned to a client application that is registered with an AWS Single Sign-On (SSO) service, used to authenticate and authorize the application to access SSO resources.
SsoClientSecret | Confidential key assigned to a client application registered with an AWS Single Sign-On (SSO) service, used in conjunction with the SSO Client ID to authenticate the application and secure access to SSO resources.

3. Click <span class="text-orange">**Next**</span>.

#### Configure Stack Options

1. Add a new tag. **This step is optional**.

Tags (key-value pairs) are used to apply metadata to AWS resources, which can help in organizing, identifying, and categorizing those resources. You can add up to 50 unique tags for each stack. If you need more information about tags, click here.

<p><img src="/static/images/quickstart/stack-tags.jpg" alt="CMS Enterprise tags" style="width: 55%;"></p>

2. Specify an existing AWS Identity and Access Management (IAM) service role that CloudFormation can assume. **This step is optional**.

<p><img src="/static/images/quickstart/stack-permissions.jpg" alt="CMS Enterprise permissions" style="width: 55%;"></p>

3. Select the stack failure options.

<p><img src="/static/images/quickstart/stack-failure.jpg" alt="CMS Enterprise failure" style="width: 55%;"></p>

Name   | Description
---    | ---
Behavior on provisioning failure | Specify the roll back behavior for a stack failure..
Delete newly created resources during a rollback | Specify whether resources that were created during a failed operation should be deleted regardless of their deletion policy.

To learn more about the stack failure options, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-failure-options.html" target="_blank">click here :icon-link-external:</a>.

#### Advanced options

1. You can set additional options for your stack, like notification options and a stack policy. For more information, <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-console-add-tags.html" target="_blank">click here :icon-link-external:</a>.

<p><img src="/static/images/quickstart/stack-advanced.jpg" alt="CMS Enterprise advanced options" style="width: 50%;"></p>

2. Click <span class="text-orange">**Next**</span>.

### Review and create

1. Review your settings.

2. Acknowledge the AWS CloudFormation terms.

<p><img src="/static/images/quickstart/stack-capabilities.jpg" alt="CMS Enterprise capabilities" style="width: 62%;"></p>

3. Click <span class="text-orange">**Submit**</span>.

### Stacks

1. <span class="text-orange">**Watch your CMS being created!**</span> Once the status changes from **CREATE_IN_PROGRESS** to **CREATE_COMPLETE**, you can access your CMS.

<!-- <p><img src="/static/images/quickstart/pro/pro-stack.jpg" alt="CMS Enterprise Stack" style="width: 62%;"></p> -->

2. Click on the **Outputs** tab and copy the AdminUrl value.

<p><img src="/static/images/quickstart/stack-outputs.jpg" alt="CMS Enterprise Stack Outputs" style="width: 62%;"></p>

3. Open your preferred browser and paste the AdminUrl value to access the CMS login page. Use the **Admin Username** and **Admin Password** provided in the stacks output to log in.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 50%;"></p>

{% endtab %}

{% tab title="Launch through EC2" %}

#### Choose an Action

1. Select **Launch through EC2**.

<p><img src="/static/images/quickstart/actions-ec2.jpg" alt="CMS Enterprise Actions" style="width: 74%;"></p>

2. Click **Launch**.

#### Launch an instance

Create virtual machines, or instances, that run on the AWS Cloud. Quickly get started by following the simple steps below.

1. **Name and tags**. Give your instance a **name**. You can also add additional tags (Optional).

<p><img src="/static/images/quickstart/name-instance.jpg" alt="CMS Enterprise Name" style="width: 55%;"></p>

!!!NOTE:
A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define.
!!!

2. **Application and OS Images (Amazon Machine Image)**. An AMI contains the software configuration (operating system (OS), application server, and applications) required to launch your instance.

For more information about Amazon Machine Image, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html" target="_blank">click here :icon-link-external:</a>.

3. **Instance Type**. Select an instance type that meets your computing, memory, networking, or storage needs.

<p><img src="/static/images/quickstart/type-instance-large.jpg" alt="CMS Enterprise Instance Type" style="width: 55%;"></p>

To learn more about which instance to select based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.

!!!NOTE:
Solodev recommends t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu.
!!!

4. **Key Pair**. You can use a key pair to securely connect to your instance. Ensure that you have access to the selected key pair before you launch the instance.
  
<p><img src="/static/images/quickstart/key-pair-instance.jpg" alt="CMS Enterprise Key Pair" style="width: 55%;"></p>

!!!NOTE:
An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verifies a user's identity when connecting or communicating with an EC2 instance. If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.
!!!

5. **Network Settings**. Here you can create or select an existing security group, create an instance that can connect using SSH, and more.

<p><img src="/static/images/quickstart/network-instance.jpg" alt="CMS Enterprise Network Settings" style="width: 55%;"></p>

6. **Configure storage**. Specify the storage options for the instance.

<p><img src="/static/images/quickstart/storage-instance.jpg" alt="CMS Enterprise Storage" style="width: 55%;"></p>

For more information about storage, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Storage.html?icmpid=docs_ec2_console" target="_blank">click here :icon-link-external:</a>.

7. Click **Launch Instance**.

<p><img src="/static/images/quickstart/launch-instance.jpg" alt="CMS Enterprise Launch Instance"></p>

8. You will get a success message. Click on the ID to access your EC2 Instance.

<p><img src="/static/images/quickstart/success-instance.jpg" alt="CMS Enterprise Success Message" style="width: 40%;"></p>

#### EC2 Instance

1. Check the **Instance State** and **Status Check** of your instance. Once your instance state changed from **Pending** to **Running**, click on the instance you created to access it.

<p><img src="/static/images/quickstart/cms-instance-state.jpg" alt="CMS Enterprise Instance" style="width: 40%;"></p>

2. Click on your **Public IPv4 address** to access the login page.

<p><img src="/static/images/quickstart/cms-public-address.jpg" alt="CMS Enterprise Public Address" style="width: 25%;"></p>

3. To log in, use **solodev** as the username and your **instance ID** as the password.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 45%;"></p>
{% endtab %}

{% tab title="Launch from Website" %}

#### Choose an Action

1. Select **Launch from Website**

<p><img src="/static/images/quickstart/cms-launch-from-website.jpg" alt="CMS Enterprise Choose Actions" style="width: 55%;"></p>

2. **EC2 Instance Type**. CMS Micro runs on a single Amazon Elastic Compute (EC2) instance and is defaulted to run on a recommended t2.large server. Depending on your traffic needs, you can select an instance size from the available options in the menu. 

<p><img src="/static/images/quickstart/cms-instance.jpg" alt="CMS Enterprise EC2 Instance Type" style="width: 35%;"></p>

To learn more about which instance to choose based on your traffic needs, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html" target="_blank">click here :icon-link-external:</a>.

3. **VPC Settings**. An Amazon Virtual Private Cloud (VPC) is a dedicated environment that lets you launch the AWS resources that power your CMS Micro in an isolated virtual network. If you do not have a VPC, you will need to create one in your VPC Console.

<p><img src="/static/images/quickstart/cms-vpc.jpg" alt="CMS Enterprise VPC Settings" style="width: 35%;"></p>

For instructions on how to create a VPC, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html" target="_blank">click here for instructions :icon-link-external:</a>.

4. **Subnet Settings**. A subnet is a range of IP addresses contained in your VPC. You can create AWS resources, such as EC2 instances, in specific subnets, enabling you to group network resources more efficiently. 

<p><img src="/static/images/quickstart/cms-subnet.jpg" alt="CMS Enterprise Subnet Settings" style="width: 35%;"></p>

If you do not have any existing subnets, you will need to create one in your Subnet Console. For instructions, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#ec2-shared-VPC-subnets" target="_blank">click here :icon-link-external:</a>.

5. **Security Group Settings**. A security group acts as a firewall that controls the traffic allowed to reach one or more instances. You can create a new security group or choose one of your existing groups. Select an existing security group from the menu or configure a new security group using the form provided. Name your security group and give it a description.

<p><img src="/static/images/quickstart/security-groups.jpg" alt="CMS Enterprise Security Groups" style="width: 60%;"></p>

To learn more about security groups, <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html" target="_blank">click here :icon-link-external:</a>.

6. **Key Pair Settings**. An Amazon EC2 key pair is a set of security credentials consisting of a public and private key that verify a user’s identity when connecting or communicating with an EC2 instance. Select an existing security group from the menu or configure a new security group using the form provided. 

<p><img src="/static/images/quickstart/cms-key-pair.jpg" alt="CMS Enterprise Key Pair Settings" style="width: 63%;"></p>

If you do not have a Key Pair, you will need to create one in your Key Pair Console. For instructions <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html" target="_blank">click here :icon-link-external:</a>.

7. Click <span class="text-orange">**Launch**</span>.

8. You will receive a success message to view your instance. Click on **EC2 Console**.

<p><img src="/static/images/quickstart/cms-success-launch.jpg" alt="CMS Enterprise Launch Message" style="width: 44%"></p>

#### EC2 Instance

1. Check the **Instance State** and **Status Check** of your instance. Once your instance state changed from **Pending** to **Running**, click on the instance you created to access it.

<p><img src="/static/images/quickstart/cms-instance-state.jpg" alt="CMS Enterprise Instance" style="width: 40%;"></p>

2. Click on your **Public IPv4 address** to access the login page.

<p><img src="/static/images/quickstart/cms-public-address.jpg" alt="CMS Enterprise Public Address" style="width: 25%;"></p>

3. To log in, use **solodev** as the username and your **instance ID** as the password.

<p><img src="/static/images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 45%;"></p>
{% endtab %}

{% endtabs %}

## Next Steps

### Add your first website

Start your journey with Solodev! Set up and launch your [first website](/workspace/websites/add-website/).

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