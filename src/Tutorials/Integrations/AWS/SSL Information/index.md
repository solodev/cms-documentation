# How to add an SSL certificate in AWS

SSL (Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data passed between the web server and browsers remain private and integral.

**Name** | **Description**
:--- | ---
**SSL Website address** | The SSL domain name that establishes an HTTPS connection to your website.
**Sitewide SSL (Canonical)** | Mark this checkbox to force an  HTTPS connection to all pages.
**SSL Certificate** | The certificate for your domain obtained from a Certificate Authority.
**SSL Key** | The information from the SSL key file goes here.
**SSL Chain certificate** | The ordered list of certificates containing an SSL Certificate and Certificate Authority Certificates goes here.

## Adding SSL information

**Step 1:** Click the desired Website from the list of websites from the dashboard.

**Step 2:** Click **Settings**.

**Step 3:** Enter the **SSL domain** name for your website.

**Step 4:** Check the **Sitewide SSL** checkbox to establish an HTTPS connection across all pages.

**Step 5:** Enter the **SSL Certificate**.

**Step 6:** Enter the **SSL Key**.

**Step 7:** Enter the **SSL Chain Certificate**.

**Step 8:** Click **Submit**.

## How to Request and Use an AWS Certificate Manager (ACM) Public Certificate:

**Step 1**. Login to Your AWS Account and access the AWS Management Console using your AWS account credentials.

**Step 2**. Access the AWS Management Console, once logged in, navigate to the AWS Management Console. You can usually find the link at the top right corner of the AWS homepage.

**Step 3**. Search and Access AWS Certificate Manager in the AWS Management Console, use the search bar to look for "Certificate Manager" and select the corresponding result to open the AWS Certificate Manager dashboard.

**Step 4**. Request a Certificate in the AWS Certificate Manager dashboard, click on the **Request a certificate** button to initiate the certificate request process.

**Step 4**. Specify Domain Name, enter your fully qualified domain name (FQDN) for which you want to request the certificate. Additionally, if you want the certificate to cover subdomains, enter the same domain name with a **wildcard (*)** in front of it. This ensures that the certificate covers both your main domain and any subdomains.

**Step 5**. Choose your validation method and select the default DNS validation method, which is recommended. This involves proving your ownership of the domain through DNS records.

**Step 6**. When choosing your key algorithm choose the default RSA 2048 key algorithm. This is a secure choice for generating cryptographic keys.

!!!Note 
Tagging is optional and you can choose whether to add tags for better organization and management, but it's not mandatory.
!!!

**Step 7**. Request the Certificate after entering the necessary details, click the **Next** button and then click **Review**. Ensure that all the information is accurate, and then click **Confirm and request** to submit your certificate request.

**Step 8**. View Requested Certificates, after submitting the request. Navigate to the **List Certificates** section within the ACM dashboard. You might need to refresh the page to see your newly requested certificate in the list.

**Step 9**. Locate the certificate you've requested and click on the certificate ID link. This will take you to the detailed information page for the certificate.

**Step 10**. View CNAME Information on the certificate details page. You will find information such as your CNAME (Canonical Name) name and CNAME value. These values are required for the DNS validation process.

**Step 11**. Set Up DNS Validation by logging into the DNS management console of your domain registrar or DNS service provider. Create a DNS record using the CNAME name and value provided by AWS. This is necessary to validate your ownership of the domain.

## Additional Use Case
If you're working with AWS CloudFormation stacks, you can also use the Amazon Resource Name (ARN) of the certificate as a parameter in your CloudFormation template to associate the certificate with specific AWS resources.

By following these steps, you'll be able to successfully request a public certificate from AWS Certificate Manager, validate your domain ownership, and use the certificate for securing your services or resources.

## How to Request and Use an AWS Certificate Manager (ACM) Public Certificate:

**Step 1**. Login to Your AWS Account and access the AWS Management Console using your AWS account credentials.

**Step 3**. Access AWS Certificate Manager in the AWS Management Console, use the search bar to look for "Certificate Manager" and select the corresponding result to open the AWS Certificate Manager dashboard.

**Step 4**. Request a Certificate in the AWS Certificate Manager dashboard, click on the "Request a certificate" button to initiate the certificate request process.

**Step 4**. Specify Domain Name, enter your fully qualified domain name (FQDN) for which you want to request the certificate. Additionally, if you want the certificate to cover subdomains, enter the same domain name with a wildcard (*) in front of it. This ensures that the certificate covers both your main domain and any subdomains.

**Step 5**. Select the default DNS validation method that is recommended. This involves proving your ownership of the domain through DNS records.

**Step 6**. When choosing your key algorithm choose the default RSA 2048 key algorithm. This is a secure choice for generating cryptographic keys.

!!!Note 
Tagging is optional and you can choose whether to add tags for better organization and management.
!!!

**Step 7**. Request the Certificate after entering the necessary details, click the "Next" button and then click "Review." Ensure that all the information is accurate, and then click "Confirm and request" to submit your certificate request.

**Step 8**. View Requested Certificates, after submitting the request. Navigate to the "List Certificates" section within the ACM dashboard. You might need to refresh the page to see your newly requested certificate in the list.

**Step 9**. Locate the certificate you've requested and click on the certificate ID link. This will take you to the detailed information page for the certificate.

**Step 10**. View CNAME Information on the certificate details page. You will find information such as your CNAME (Canonical Name) name and CNAME value. These values are required for the DNS validation process.

**Step 11**. Set Up DNS Validation by logging into the DNS management console of your domain registrar or DNS service provider. Create a DNS record using the CNAME name and value provided by AWS. This is necessary to validate your ownership of the domain.

**Step 11**. Once the DNS entry is in place, AWS will automatically detect this new entry and the Certificate status will update from Pending to Issued.  The certificate is now ready to be associated with other AWS services such as Aplication Load Balancers or even CloudFront distributions.

## Once the certificate is Issued

There are two options.

A. The user already has a Solodev stack in place because they followed the Quickstarts:
- <a href="/quickstart/solodev-pro/" target="_blank">Installing Solodev CMS Professional Edition</a>
- <a href="/quickstart/solodev-enterprise/" target="_blank">Installing Solodev CMS Enterprise Edition</a>


B. The user is about to create a Solodev stack using one of those quick starts.

------

If B then they can take the certificate that was just created and put its ARN into the field labeled CertificateArn when creating the stack.

If A then there is already a load balancer in their account and they just need to make the association. They do not need to make a new Load Balancer