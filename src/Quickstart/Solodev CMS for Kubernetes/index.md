# Solodev CMS for Kubernetes

Solodev also offers a fully containerized version of the Solodev CMS for Kubernetes with orchestration via AWS EKS (Elastic Kubernetes Service) or Amazon ECS (Elastic Container Service). Ideal for high-availability enterprise applications, Solodev CMS for Kubernetes provides a flexible, modern, scalable solution for delivering websites and applications to meet the most demanding production requirements. 

Supported services also include Amazon EKS Anywhere and Self-Managed Kubernetes. Deploy from AWS Marketplace via Helm chart or container, with nodes available in multiple pricing tiers. 

[Contact us](mailto:sales@solodev.com) for setup and details.

## Overview

Launch Amazon Elastic Kubernetes Service (EKS) in a new cluster and manage your containers at any scale with Solodev. Launch your applications rapidly and across AWS Regions and Availability Zones, and move from environment to environment regardless of operating system.

Solodev Kubernetes for EKS uses a set of YAML templates to create a new EKS cluster. All YAML templates are deployed via <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="blank">AWS CloudFormation</a>.

<p><img src="../../images/quickstart/kubernetes/solodev-kubernetes-template.jpg" alt="Solodev EKS Architecture Diagram" style="width: 80%;"></p>

## Prerequisites

* Before subscribing to Solodev CMS for Kubernetes, you must have an AWS account and sign in. 
* If you do not have an account, you can create one at <a href="https://aws.amazon.com/" target="blank" rel="noopener noreferrer">https://aws.amazon.com/</a>.
* Configure your VPC and EC2 Key Pair.

## AWS Setup

**Step 1:** Subscribe on the AWS Marketplace.

* Subscribe to **Solodev CMS for Kubernetes** on the AWS Marketplace by <a href="https://aws.amazon.com/marketplace/pp/prodview-s7tpcn3m7fuf6?sr=0-4&ref_=beagle&applicationId=AWSMPContessa" target="_blank" rel="noopener noreferrer">clicking here</a>.

!!!NOTE:
If you already have a existing Solodev license, call [1-800-859-7656](tel:1-800-859-7656), and a team member will activate your subscription.
!!!

* At the top of the AWS Marketplace listing page for the Solodev CMS for Kubernetes, click the **“Continue to Subscribe”** button.

<p><img src="../../images/quickstart/kubernetes/cms-eks-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%;"></p>

* You will be directed to the **"Agreement"** page. Review and make adjustments as needed. Click the **"Continue to Configuration"** button on the top-right corner of the AWS listing.

<p><img src="../../images/quickstart/kubernetes/cms-eks-terms.jpg" alt="CMS EKS Configure Software Contract" style="width: 80%;"></p>

* Select a **"Fulfillment option"** from the dropdown.
	* Helm chart:
		* Deploy Helm
		* HelmChartDeliveryOption

<p><img src="../../images/quickstart/kubernetes/cms-eks-configure.jpg" alt="CMS EKS Configure" style="width: 80%;"></p>


* Specify the basic configurable such as the software version and the region you wish to launch the stack. Click on the **"Continue to Launch"** button to proceed.

<p><img src="../../images/quickstart/pro/aws-pro-subscribe.jpg" alt="CMS EKS Configure Software Contract" style="width: 80%;"></p>

* Confirm your configurations and choose **"Launch CloudFormation"** within the "Choose Action" field. Click on the **"Launch"** button to continue to CloudFormation.

<p><img src="../../images/quickstart/pro/cms-pro-launch.jpg" alt="CMS EKS Launch CloudFormation" style="width: 70%; margin-bottom: 20px;"></p>

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

## Support

To learn more about our add-on support options, call 1-800-859-7656 to speak with one of our Solodev Customer Care Specialists. -->