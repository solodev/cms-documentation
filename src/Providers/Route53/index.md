# Route53

Point AWS Route 53 at your Solodev CMS deployment's IP address.

## Get your IP address

Find your deployment's IP address in its CloudFormation stack outputs -- this is the value you'll route DNS traffic to below.

## Create an A record

**Step 1**. Log in to your AWS Management Console and navigate to **Route 53**.

**Step 2**. Create a new `A` record in your hosted zone.

**Step 3**. Enter the domain name for your website.

**Step 4**. In the **Value** field, enter the IP address from your CloudFormation output.

**Step 5**. Save the record.

## Load balancer (ELB) domains

If your CloudFormation output shows an `AdminUrl` ending in `elb.amazonaws.com`, your deployment is fronted by an Elastic Load Balancer instead of a plain IP:

**Step 1**. Create an `A` record that's an **Alias**, rather than a plain address record.

**Step 2**. Set the domain name to your desired subdomain (for example, `admin.yourdomain.com`).

**Step 3**. In the **Value** field, enter the ELB's URL (for example, `your-elb-name.elb.amazonaws.com`).

!!! Note:
DNS changes can take time to propagate. Once your record resolves, [add the website](/websites/add-website/) to your Solodev CMS if you haven't already.
!!!

Registering a new domain, or using GoDaddy for DNS instead? See [GoDaddy](/providers/godaddy/).
