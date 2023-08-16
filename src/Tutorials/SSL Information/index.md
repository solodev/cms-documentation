# SSL Information

(Secure Sockets Layer) is the standard security technology for establishing an encrypted link between a web server and a browser. This link ensures that all data passed between the web server and browsers remain private and integral.

**SSL Website address** – The SSL domain name that establishes an HTTPS connection to your website.

**Sitewide SSL (Canonical)** – Mark this checkbox to force an  HTTPS connection to all pages.

**SSL Certificate** – the certificate for your domain obtained from a Certificate Authority.

**SSL Key** – the information from the SSL key file goes here.

**SSL Chain certificate** – the ordered list of certificates containing an SSL Certificate and Certificate Authority Certificates goes here.

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

## How to Request and Use an AWS Certificate for EC2 Instances with Load Balancing

**Step 1**. Login to Your AWS Account and access the AWS Management Console using your account credentials.

**Step 2**. To access the EC2, there are several navigation options available.. One way is to use the search function. Type **EC2** in the search bar, and it will bring up the EC2 service under the **Services** dropdown. Alternatively, you can directly click on **Services** in the upper-left corner, choose **Compute**, and then select **EC2**.

**Step 3**. Access Load Balancers within the EC2 Dashboard. You'll find various categories in the navigation pane on the left. Scroll down and locate the **Load Balancing** category. Click on **Load Balancers** under this category.

**Step 4**. Click the **Create Load Balancer** button to initiate the process of creating a load balancer.

**Step 5**. Configure Load Balancer and choose the type of load balancer you want to create. For this scenario, choose the **Application Load Balancer**.

**Step 6**. As part of load balancer setup, you'll need to configure listeners to handle incoming traffic. Add a listener for HTTPS (port 443), which is typically used for secure connections.

**Step 7**. Configure SSL Settings in the listener configuration, choose the HTTPS protocol (port 443). Then, in the **SSL certificate** section, choose the **Add certificate** button.

**Step 8**. A dialog box will appear where you can select a certificate to associate with the listener. Choose the certificate you previously requested from AWS Certificate Manager.

**Step 9**. After selecting the certificate, you'll be given the option to include it as "Pending." This means that the certificate will be associated with the listener but won't be marked as "In use" until it's verified.

**Step 10**. Complete any additional load balancer configuration settings as needed. This might involve defining target groups, security groups, and routing rules.

**Step 11**. Review your load balancer configuration and settings. Once you're satisfied, click the "Create" button to create the load balancer.

**Step 12**. The certificate you added will now be in a "Pending" state. You'll need to wait for the certificate's verification process to complete. AWS will automatically validate the certificate's ownership by checking the DNS records you added during the certificate request.

**Step 13**. Once the certificate's verification is successful, it will be marked as "In use" for the listener. This means your load balancer is now ready to securely handle incoming HTTPS traffic.

By following these steps, you'll have successfully requested an AWS certificate using AWS Certificate Manager and associated it with an EC2 load balancer, enabling secure HTTPS communication for your applications.