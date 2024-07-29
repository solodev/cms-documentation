# How to add a website

The most basic yet important function in Solodev is adding a website to your CMS. In this article, you will learn how to create a fresh site from scratch, add the essential files and folders, and prepare your site for building pages.

!!!**Note**:
Solodev is a native multi-site platform, allowing you to run multiple websites and apps with one license and manage it all from a single login. Each site is self-contained, but resources like files and images can be shared across sites.
!!!

## Prerequisites

- You will need a valid  Fully Qualified Domain Name such as *www.testsite<span>.<span>com* for your new site. If you do not currently own a FQDN, you can purchase one through a domain registrar such as [GoDaddy.com](https://www.godaddy.com).
- Once you have a FQDN, you need to point your domain’s DNS records to the server where your Solodev CMS is hosted on AWS. Visit your registrar’s website for instructions. To locate your server’s IP address in AWS, review the Quickstart for [Solodev CMS for Kubernetes](../../../quickstart/solodev-cms-for-kubernetes/), [Solodev CMS Enterprise Edition](../../../quickstart/solodev-enterprise/), [Solodev CMS Professional Edition](../../../quickstart/solodev-pro/), or [CMS Micro AWS](../../../quickstart/solodev-micro/).
- Before getting started on any new website, it is highly recommended that you have an approved design prototype and sitemap to guide your development.
 
## Adding a site

1. Log into your Solodev CMS. On the main dashboard, click **"Add Website"**.

<p><img src="../../../images/tutorials/add-website/add-website.jpg" alt="Add website" style="width: 22%;"></p>

!!!**Note**:
When adding a new site, you also have the option to upload a ready-made theme package, complete with all the necessary templates, folders, and files.
!!!

2. In the form fields, enter your Fully Qualified Domain Name (e.g., *www.testsite.com*), select the type of website, upload a theme, and choose your timezone. Click **Add**.

<p><img src="../../../images/tutorials/add-website/add-website-form.jpg" alt="Add website form" style="width: 80%;"></p>

Field | Description
--- | ---
Fully Qualified Domain Name (FQDN) | The complete and specific website address. For example, in www.testsite.com. An FQDN helps to clearly identify and locate a specific website on the internet.
Type | Select the type of website you want to create. CMS (Default) or Standard. **CMS (Content Management System)** - A website that allows you to easily create, manage, and modify content without needing technical knowledge. **Standard** - A basic website that usually consists of static pages and requires some coding knowledge to update content.
Theme (Optional) | Upload a .zip file to create your website using a theme. Ensure the .zip file includes all necessary files and follows the theme guidelines.
Timezone | Select the timezone based on your location to ensure accurate time settings for your website. The system will automatically select the timezone for you based on your location, but you can manually choose a different one if needed.

Once your website is created, you will be automatically directed to the **Websites** dashboard in your CMS, where your new site will appear at the top of the table.

<p><img src="../../../images/tutorials/add-website/website-dashboard.jpg" alt="Website dashboard" style="width: 80%;"></p>