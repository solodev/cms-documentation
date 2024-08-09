#

<div class="header">
  <div class="inner">
    <img src="../../images/quickstart/cms-eks-logo.jpg" alt="CMS for EKS Logo" style="width: 80px;">
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

<!-- <p><img src="../../images/quickstart/kubernetes/solodev-kubernetes-template.jpg" alt="Solodev EKS Architecture Diagram" style="width: 80%;"></p> -->

## Prerequisites

* You need to sign up for an <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account :icon-link-external:</a>.
* [Subscribe to Solodev](#cms-subscription) on the AWS Marketplace.
<!-- * Launch a <a href="#create-cluster">Cluster</a>. -->

## CMS Subscription

The following steps cover the setup of the **CMS for EKS** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process. By subscribing, you gain access to a comprehensive suite of tools and features designed to enhance your productivity and streamline your workflow.

1. Review and accept the **"Terms and Conditions"**.
2. Click **"Continue to Configuration"**.

<p><img src="../../images/quickstart/kubernetes/cms-eks-terms.jpg" alt="CMS EKS Configure Software Contract" style="width: 80%;"></p>

!!!NOTE:
Once accepted, you will receive a thank you message asking you to configure your software. <br>This process can take a few moments. Please do not exit the screen or refresh the page.
!!!

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Configure Software</span>

1. Select **Helm chart** as the fulfillment option.
2. Click on the **"Continue to Launch"** button to proceed.

<p><img src="../../images/quickstart/kubernetes/cms-eks-configure.jpg" alt="CMS EKS Configure" style="width: 60%;"></p>

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Launch Software</span>

Review the launch configuration details and follow the instructions to launch this software.

1. **Choose Action**
2. Click **"Launch"**.

## Next Steps

### Login to Solodev

Visit the IP address or the backend domain you previously configured. Log in to Solodev using the username and the password you configured on your stack.

<p><img src="../../images/quickstart/login-screen.jpg" alt="Solodev CMS Login Screen" style="width: 45%;"></p>

### Add your First Website

Please [follow this link](/workspace/websites/add-website/) to learn more about Solodev and to learn how to build your first website.


<!-- 

## Step 2: Launch Solodev Kubernetes for EKS via CloudFormation

<table>
	<tr>
		<td width="20%"><img src="https://raw.githubusercontent.com/solodev/aws/master/pages/images/amazon-eks-by-solodev.jpg" /></td>
		<td>
			<h3>Solodev Kubernetes for EKS</h3>
			<p>Launch Amazon Elastic Kubernetes Service (EKS) in a new cluster and manage your containers at any scale with Solodev. Launch your applications rapidly and across AWS Regions and Availability Zones, and move from environment to environment regardless of operating system.</p>
			<p align="right"><a href="https://github.com/solodev/quickstart-solodev-eks/blob/master/pages/deploy-solodev-eks.md"><img src="https://raw.githubusercontent.com/solodev/aws/master/pages/images/solodev-launch-btn.png" width="200"/> </a>
			</p>
		</td>
	</tr>
</table>

## Launch Apps on your Managed Kubernetes Cluster

With your EKS cluster up and running, you can install apps within the cluster itself. Below are available apps with more to come!
<table>
	<tr>
		<td width="20%"><img src="https://raw.githubusercontent.com/solodev/aws/master/pages/images/solodev-dcx-for-eks.jpg" /></td>
		<td>
			<h3>Solodev Content Management (CMS) for Kubernetes</h3>
			<p>Deploy Solodev CMS for Kubernetes and start managing and scaling your websites and digital experiences on AWS. Rapidly move from your local environment to the cloud, add or remove containers to meet shifts in traffic, and manage entire fleets of Solodev applications with the power of Amazon EKS.</p>
			<p align="right"><a href="https://github.com/solodev/quickstart-solodev-eks/blob/master/pages/deploy-solodev-cms.md"><img src="https://raw.githubusercontent.com/solodev/aws/master/pages/images/solodev-launch-btn.png" width="200" /></a></p>
		</td>
	</tr>
</table>
 -->

<style>
  .pluggable .rounded-t a.text-gray-500 {
    color: #000;
  }
  .pluggable .border {
    border-color: #b5b3b3;
  }
</style>