# 

<div style="display: flex; align-items: center; justify-content: space-between; padding: 2rem 1.5rem; margin-bottom: 2rem; background-color: #eef6ff;">
  <div  style="display: flex; align-items: center; justify-content: start;">
    <img src="../../images/quickstart/micro/solodev-micro.png" alt="CMS Micro Logo" style="width: 80px;">
    <div>
      <h1 style="margin-left: 0; font-size: 2rem; margin-bottom: 0.25rem;">Kubernetes for EKS</h1>
      <p style="padding-left: 2rem; margin-bottom: 0;">Fully containerized version of the Solodev CMS for Kubernetes with orchestration via AWS EKS (Elastic Kubernetes Service) or Amazon ECS (Elastic Container Service).</p>
    </div>
  </div>
  <a href="https://aws.amazon.com/marketplace/pp/prodview-s7tpcn3m7fuf6?sr=0-4&ref_=beagle&applicationId=AWSMPContessa" rel="noopener noreferrer" target="_blank" style="background-color: #f99700; color: #fff; padding: .5rem 2.5rem; border-radius: 20px; font-weight: 600; display: inline-flex;">SUBSCRIBE <span style="padding-left: .5rem; display: inline-flex; align-items: center;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="20" height="20" fill="#fff"><path d="M3.75 2h3.5a.75.75 0 0 1 0 1.5h-3.5a.25.25 0 0 0-.25.25v8.5c0 .138.112.25.25.25h8.5a.25.25 0 0 0 .25-.25v-3.5a.75.75 0 0 1 1.5 0v3.5A1.75 1.75 0 0 1 12.25 14h-8.5A1.75 1.75 0 0 1 2 12.25v-8.5C2 2.784 2.784 2 3.75 2Zm6.854-1h4.146a.25.25 0 0 1 .25.25v4.146a.25.25 0 0 1-.427.177L13.03 4.03 9.28 7.78a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042l3.75-3.75-1.543-1.543A.25.25 0 0 1 10.604 1Z"></path></svg></span></a>
</div>

## Product Overview

Ideal for high-availability enterprise applications, Solodev CMS for Kubernetes provides a flexible, modern, scalable solution for delivering websites and applications to meet the most demanding production requirements. 

Supported services also include Amazon EKS Anywhere and Self-Managed Kubernetes. Deploy from AWS Marketplace via Helm chart or container, with nodes available in multiple pricing tiers. 

Launch Amazon Elastic Kubernetes Service (EKS) in a new cluster and manage your containers at any scale with Solodev. Launch your applications rapidly and across AWS Regions and Availability Zones, and move from environment to environment regardless of operating system.

Solodev Kubernetes for EKS uses a set of YAML templates to create a new EKS cluster. All YAML templates are deployed via <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html" target="blank">AWS CloudFormation</a>.

<!-- <p><img src="../../images/quickstart/kubernetes/solodev-kubernetes-template.jpg" alt="Solodev EKS Architecture Diagram" style="width: 80%;"></p> -->

## Prerequisites

* You need to sign up for an <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account</a>.
* Subscribe to Solodev on the <a href="https://aws.amazon.com/marketplace/pp/prodview-s7tpcn3m7fuf6?sr=0-4&ref_=beagle&applicationId=AWSMPContessa" rel="noopener noreferrer" target="_blank">AWS Marketplace</a>.
* Launch a <a href="#create-cluster">Cluster</a>.

## CMS Subscription

The following steps cover the setup of the **Solodev CMS for Kubernetes** on the AWS Marketplace. Click the **“Continue to Subscribe”** button at the top of the AWS Marketplace listing page to continue the process.

<!-- <p><img src="../../images/quickstart/kubernetes/cms-eks-marketplace-listing.jpg" alt="AWS Marketplace listing" style="width: 80%;"></p> -->

{% tabs %}
{% tab title="AWS" %}
### <span style="color: #168479; display: block;">Subscribe to this Software</span>

By subscribing, you gain access to a comprehensive suite of tools and features designed to enhance your productivity and streamline your workflow.

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

{% endtab %}

{% tab title="Command Line" %}
### <span style="color: #168479; display: block;">Prerequisites</span>

* You need an Access Key and a Secret Token from your AWS account IAM user. For more information on IAM user, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html?icmpid=docs_iam_help_panel" target="_blank" rel="noopener noreferrer">click here</a>.
* You might need to install or update the following packages:

* You need to have **Chocolatey** installed (Windows) or any other package manager you prefer. For instructions on how to install Chocolatey, <a href="https://chocolatey.org/install" target="_blank" rel="noopener noreferrer">click here</a>.
* You will also need the following packages:

  * **EKS CTL**
   
    `eksctl` is a command-line tool provided by AWS (Amazon Web Services) that simplifies the creation, management, and operation of Kubernetes clusters on AWS's managed Kubernetes service known as Amazon EKS (Elastic Kubernetes Service).

    ```js
    choco install eksctl
    ```

  * **Kubernetes Command-Line Tool**

    The `kubectl` is a command-line tool for Kubernetes that lets users deploy and manage applications, inspect and manage cluster resources, view logs, and troubleshoot issues within Kubernetes environments. It communicates with the Kubernetes API server to execute commands, handle operations like creating, deleting, scaling, and updating resources such as pods, services, and deployments.

    ```js
    choco install kubernetes-cli
    ```

  * **Kubernetes Helm**

    `Kubernetes Helm` is a package manager for Kubernetes that simplifies the process of deploying and managing applications on Kubernetes clusters. It allows users to define, install, and upgrade complex Kubernetes applications and their dependencies through charts. A `Helm chart` is a collection of files that describe a set of Kubernetes resources, such as deployments, services, and config maps, packaged together for easy deployment.

    ```js
    choco install kubernetes-helm
    ```

  * **jq**

    `jq` is a lightweight and flexible command-line JSON processor. It allows you to parse, filter, map, and transform JSON data with ease.

    ```js
    choco install jq
    ```

  * **Python**

    `Python` is a versatile and powerful scripting language that allows you to automate tasks, interact with system resources, and integrate with various APIs and libraries. <a href="https://apps.microsoft.com/search?query=Python&hl=en-us&gl=US" target="_blank" rel="noopener noreferrer">Download the latest version from the Microsoft Store.</a>

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Configure your user credentials</span>

1. Make sure you have the latest version of `aws cli`. If you do not, <a href="https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions" target="_blank" rel="noopener noreferrer">follow this instructions.</a>
```js
aws --version
```
2. Configure your user credentials by running the following command:
```js
aws configure --profile PROFILE-NAME
```

!!!NOTE:
Replace `PROFILE-NAME` with you own.
!!!

You will be prompted for the following information:

```js
AWS Access Key ID [None]:
AWS Secret Access Key [None]:
Default region name [None]:
Default output format [None]:json
```

  1. **AWS Access Key ID**: Obtain this from your IAM user settings.
  2. **AWS Secret Access Key**: Obtain this from your IAM user settings.
  3. **Default Region Name**: Enter your preferred AWS region (e.g., `us-east-1`).
  4. **Default Output Format**: Specify `json` for JSON output format.

If you don't have a cluster yet, create one now. To create a cluster [click here](#create-cluster).

### <span style="color: #168479; margin-top: 2.5rem; display: block;">Install Solodev CMS for EKS</span>

The following commands will install Solodev CMS for EKS onto the cluster you just created. 

1. Run the following command:

```js
./ekscli.sh install cms
```

  This will prompt you for the following information:

  **Namespace:** Enter the namespace you prefer (e.g., `solodev`).
  **Release:** Enter the latest Solodev CMS release (e.g., `10.3.60`).

!!!NOTE:
You can monitor the pod creation progress in the dashboard under your namespace.
!!!

2. Look for the value labeled `NAME: cms**********` in the output and copy it.
3. After the CMS has installed, you can test it by running the following command:

```js
./ekscli.sh cms cms**********
```

<p><img src="../../images/quickstart/eks/eks-cms-console.jpg" alt="EKS CMS console" style="width: 62%;"></p>

!!!NOTE:
This updates the ports for the CMS on Kubernetes to be hosted locally so you can access it in the browser.
!!!

4. Go to <a href="http://localhost" target="_blank" rel="noopener noreferrer">http://localhost</a> in your browser.

{% endtab %}
{% endtabs %}

## Create Cluster

A cluster is a cohesive group of interconnected virtual machines (EC2 instances) or containers (ECS or EKS clusters) that collaborate to optimize workload distribution and resource management.

The following commands will create a cluster in your AWS account, set up the necessary CloudFormation stacks, and install the Kubernetes dashboard.

{% tabs %}
{% tab title="EKS" %}

1. Download the following file:

```js
curl -O https://solodev-cms.s3.amazonaws.com/eks/ekscli.sh && chmod 700 ekscli.sh
```

2. Run the following command:

```js
./ekscli.sh create cluster
```

!!!NOTE:
This process takes approximately 15 to 30 minutes.
!!!

<p><img src="../../images/quickstart/eks/eks-dashboard-console.jpg" alt="EKS dashboard console" style="width: 62%;"></p>

{% endtab %}

{% tab title="EKS-CLI" %}
Coming soon...
{% endtab %}

{% tab title="CloudFormation" %}
Coming soon...
{% endtab %}

{% endtabs %}

## Kubernetes Dashboard

The Kubernetes dashboard provides a graphical interface that simplifies these management tasks, making it easier for administrators and developers to interact with and monitor Kubernetes clusters without needing to use command-line tools exclusively.

The following command opens a localhost dashboard where you can view the cluster you just created at <a href="http://localhost:8443" target="_blank" rel="noopener noreferrer">http://localhost:8443</a>. If it does not open automatically, you can access it manually.

```js
./ekscli.sh dashboard
```

1. Copy the key from the command line and paste into the Bearer token field in the browser.
2. Explore the interface to familiarize yourself with its layout and functionalities.

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