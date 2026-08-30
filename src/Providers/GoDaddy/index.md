# GoDaddy

Register a domain with GoDaddy and point it at your Solodev CMS deployment.

## Register your domain

**Step 1**. Visit the [GoDaddy website](https://www.godaddy.com/) and search for the domain name you want. Check that it's available.

**Step 2**. If it's available, purchase it through GoDaddy's interface. This grants you ownership of the domain, typically on an annual basis.

Once registered, [add the website](/websites/add-website/) to your Solodev CMS.

## Point your domain at your CMS

DNS records tell the internet which server handles a domain. The two you'll typically need:

**Record** | **Description**
:--- | ---
`A` (Address) | Links your domain name to the IP address of the server hosting your website's files.
`CNAME` (Canonical Name) | Creates an alias for your domain pointing at another domain name -- commonly used when a load balancer distributes traffic across multiple servers.

**Step 1**. Get your website's IP address from your deployment's CloudFormation stack outputs.

**Step 2**. In GoDaddy's DNS management for your domain, create an `A` record for each of your backend CMS and frontend websites, with the destination set to that IP address, using simple routing.

!!! Note:
DNS changes can take time to propagate. If your CloudFormation output shows an `AdminUrl` ending in `elb.amazonaws.com`, your deployment uses an Elastic Load Balancer -- create an `A` record that's an **Alias** instead, with the ELB's URL as the value (for example, `admin.yourdomain.com` → `your-elb-name.elb.amazonaws.com`).
!!!

Using AWS Route 53 for DNS instead? See [Route53](/providers/route53/).
