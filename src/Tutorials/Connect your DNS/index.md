# Connect your DNS

After creating a website, developers can use the URLs provided to update their DNS tables and launch their website. The steps to access these URLs and update your DNS tables are provided below:

## Get IP Address from CloudFormation Outputs
**Step 1**. Start by navigating to the following URL: <a href="https://cms.solodev.net/quickstart/solodev-pro/#step-6-view-cloudformation-stack-outputs">https://cms.solodev.net/quickstart/solodev-pro/#step-6-view-cloudformation-stack-outputs</a>. On this page, you will find the CloudFormation stack outputs.

**Step 2**. Look for an IP address value provided in the output section. This IP address will be used to route traffic to your backend and frontend websites.

## Create DNS Entry of Type 'A' for Simple Routing
Now, use the IP address obtained from the previous step to create DNS entries. If your IP address is in the format like `x.x.x.x`, follow these steps:

**Step 1**.	In your DNS management system (like GoDaddy), create a DNS entry of type 'A' (Address) for each of your backend CMS and frontend websites.

**Step 2**.	Set the destination IP address to the one you obtained from CloudFormation.

**Step 3**.	Configure these DNS entries with simple routing, which means that when someone accesses your website's domain name, they will be directed to the specified IP address.

## Adding a Website to CMS
After configuring the DNS, you can add websites to your CMS by going to <a href="https://cms.solodev.net/workspace/websites/add-website/">https://cms.solodev.net/workspace/websites/add-website/</a> and follow the provided steps to add your websites to the CMS platform.

## Creating an 'A' Record in AWS
If you're using AWS Route 53 to manage your DNS, follow these steps:

**Step 1**.	Log in to your AWS Management Console.

**Step 2**.	Navigate to the Route 53 service.

**Step 3**.	Create a new 'A' record in your hosted zone.

**Step 4**.	Provide the domain name for your website.

**Step 5**.	In the **Value** field, enter the IP address you obtained from CloudFormation.

**Step 6**.	Save the record.

## Dealing with Load Balancer URLs
If the CloudFormation output provides an AdminUrl in the format `... elb.amazonaws.com,` it indicates that your website is using an Elastic Load Balancer (ELB) for distribution. In this case:

**Step 1**.	Create a DNS entry of type 'A' (address) that is an Alias in your DNS management system.

**Step 2**.	Set the domain name as your desired subdomain (e.g., `admin.yourdomain.com`).

**Step 3**.	In the **Value** field, enter the ELB's URL (e.g., `your-elb-name.elb.amazonaws.com`).

!!!Note:
Remember that DNS changes might take some time to propagate across the internet, so be patient. Also, the exact steps and interface might differ slightly based on the DNS and hosting provider you are using. Always refer to the documentation provided by your provider for precise instructions.
!!!