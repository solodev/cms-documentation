#

<div class="header">
  <div class="inner">
    <img src="/static/images/logos/eks-logo.jpg" alt="CMS EKS Logo" style="width: 80px;">
    <div>
      <h1>CMS for EKS</h1>
      <p class="mb-0">Fully containerized version of the CMS for EKS with orchestration via AWS EKS <br>(Elastic Kubernetes Service) or Amazon ECS (Elastic Container Service).</p>
    </div>
  </div>
  <a class="btn-orange-lg" href="https://aws.amazon.com/marketplace/pp/prodview-s7tpcn3m7fuf6?sr=0-4&ref_=beagle&applicationId=AWSMPContessa" rel="noopener noreferrer" target="_blank">SUBSCRIBE <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

Ideal for high-availability enterprise applications, CMS for EKS provides a flexible, modern, scalable solution for delivering websites and applications to meet the most demanding production requirements. 

Supported services also include Amazon EKS Anywhere and Self-Managed Kubernetes. Deploy from AWS Marketplace via Helm chart or container, with nodes available in multiple pricing tiers. 

Launch Amazon Elastic Kubernetes Service (EKS) in a new cluster and manage your containers at any scale with Solodev. Launch your applications rapidly and across AWS Regions and Availability Zones, and move from environment to environment regardless of operating system.

<!-- CMS for EKS uses a set of YAML templates to create a new EKS cluster. All YAML templates are deployed via <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="blank">AWS CloudFormation :icon-link-external:</a>. -->

<!-- <p><img src="/static/images/kubernetes/solodev-kubernetes-template.jpg" alt="Solodev EKS Architecture Diagram" style="width: 80%;"></p> -->

## Prerequisites

* Have an existing <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account :icon-link-external:</a>
* Preexisting <a href="https://cloud.solodev.net/quickstart/cloud/kubernetes/#create-a-cluster" target="_blank">Cluster</a>.

!!!Note:
If you already have a subscription to **CMS for EKS**, [click here](#launch-software).
!!!

## CMS Subscription

The following steps cover the setup of the **CMS for EKS** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process. By subscribing, you gain access to a comprehensive suite of tools and features designed to enhance your productivity and streamline your workflow.

1. Review and accept the **"Terms and Conditions"**.
2. Click **"Continue to Configuration"**.

<p><img src="/static/images/kubernetes/cms-eks-terms.jpg" alt="CMS EKS Configure Software Contract" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span class="text-teal">Configure Software</span>

1. Select **Helm chart** as the fulfillment option.
2. Click on the **"Continue to Launch"** button to proceed.

<p><img src="/static/images/kubernetes/cms-eks-configure.jpg" alt="CMS EKS Configure" style="width: 60%;"></p>

### <span class="text-teal">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

{% tabs %}

{% tab title="Helm Chart" %}

Before launching the CMS for EKS software, make sure you are logged into your AWS account. If you do not have an AWS account, [click here to create one](https://cloud.solodev.net/quickstart/cloud/aws/). Once you have signed in, click the button below and follow the outlined steps.

Steps coming soon...

{% endtab %}

{% endtabs %}

## Next Steps

### Add your first website

Start your journey with Solodev! Set up and launch your [first website](/workspace/websites/add-website/).

### Migrate to a new server
Moving your Solodev CMS to a different Solodev server? Follow our [server-to-server migration guide](/tutorials/integrations/aws/backup-and-restore/).

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
</style>