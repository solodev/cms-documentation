Imagine you have a physical office building where you have your own network of computers and servers, all connected together. This network is private, meaning only your company can use it, and you have complete control over it.

Now, let's say you want to move some of your operations to the cloud, which is like renting space in a super high-tech, highly secure building that someone else maintains for you. Amazon Virtual Private Cloud (Amazon VPC) is a service that lets you create a similar private network in this cloud environment.

Amazon VPC is like having your own private, customizable network within Amazon's cloud, giving you the control and security of a traditional network but with all the added benefits of cloud computing.

## Create a VPC

<p><img src="/static/images/quickstart/vpc/vpc-settings.jpg" alt="Create a VPC" style="width: 50%;"></p>

### VPC settings

**Setting Name** | **Description** 
:--- | ---
Resources to create | Choose whether to create only a VPC or to create a VPC, subnets, NAT gateways, and VPC endpoints. **Select VPC and more**.
Name tag auto-generation | The defined value will be used to generate the Name tag in all resources as "name-resource".
IPv4 CIDR block | You must specify an IPv4 address range for your VPC and the size of your VPC using CIDR notation. CIDR block size must be between /16 and /28. Select **No IPv6 CIDR block**
IPv6 CIDR block | You can associate an Amazon-provided IPv6 CIDR block with the VPC.
Tenancy | You can run instances in your VPC on single-tenant, dedicated hardware. **Select Dedicated** to ensure that instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch.
Number of Availability Zones (AZs) | An Availability Zone (AZ) is one or more discrete data centers with redundant power, networking, and connectivity in an AWS Region. AZs give you the ability to operate production applications and databases that are more highly available, fault tolerant, and scalable than would be possible from a single data center. **We recommend at least two AZs for high availability**.
Number of public subnets | A subnet is a range of IP addresses in your VPC. You launch AWS resources, such as EC2 instances, into subnets. Use public subnets for web applications that need to be publicly accessible over the internet. **We recommend selecting 2 (default)**.
Number of private subnets | Use private subnets to secure backend resources that don't need public access.  **We recommend selecting 2 (default)**.
NAT gateways ($) | A NAT gateway is a Network Address Translation (NAT) service. NAT gateways enable resources in private subnets to reach the internet. Choose the number of Availability Zones (AZs) in which to create NAT gateways. **Note that there is a charge for each NAT gateway**.
VPC endpoints | A VPC endpoint enables you to privately connect your VPC to supported AWS services like Amazon S3. **By default, full access policy is used.** You can customize this policy at any time.
DNS options | The DNS hostnames attribute determines whether instances launched in the VPC receive public DNS hostnames that correspond to their public IP addresses.
Additional tags | Add tags to the VPC and all resources within the VPC.