Moving your CMS to a new server is a straightforward process that ensures all your data, configurations, and content transfer seamlessly. This tutorial will walk you through backing up your existing server and restoring everything to your new server!

## Prerequisites

- Have an existing <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account :icon-link-external:</a>
- Have a [Solodev CMS](/quickstart).
- Have a new server ready. [Select the CMS that best fits your needs](/quickstart/).
- Both servers must be in the same AWS VPC for private IP communication. If they're in different VPCs or accounts, see the troubleshooting section below.

## Backup from the Current Server

Let's start by creating a backup of your current CMS installation. Here's how:

1. Connect to your current server using your preferred **SSH client** or terminal.

2. Type the following command to switch to root user (this gives you administrator privileges):

```
sudo bash
```

3. Navigate to the root directory:

```
cd /root
```

4. Run the backup command:

```
./cms.sh backup
```

5. Wait for the backup process to complete.

This will create a complete backup of your CMS, including all files, databases, and configurations.

## Initiate Restore on New Server

1. Get the private IP address of your current server by navigating to EC2, clicking on your current server instance, and copying the **Private IPv4** address from the instance details.

2. Connect to your new server using your preferred **SSH client** or terminal.

3. Type the following command to switch to root user:
```
sudo bash
```

4. Navigate to the root directory:
```
cd /root
```

5. Run the restore command, replacing the IP address below with your current server's private IP address from step 1:
```
./cms.sh restore 172.00.00.000
```

6. The system will provide you with a set of commands (typically 4 lines) to configure SSH and authorize the connection.

7. Copy the entire output exactly as shown — you'll need to paste and run these commands on your current server in the next step.

8. Connect to your current server again.

9. Switch to root user:
```
sudo bash
```

10. Paste and run the complete command provided in the previous step. This will configure SSH settings, restart the SSH service, and authorize your new server to access the current server.

11. Once complete, you can disconnect from the server.

## Configure Network Security

Before completing the restore, you'll need to allow your new server to communicate with the current one:

1. Navigate to **EC2** and click on your **new stack**.

2. Get the private IP address of your new server by navigating to your EC2 instance and copying the **Private IPv4** address from the instance details.

!!! **Pro Tip:**
Make sure to note down the private IP address of your new server - you'll need it for the security group configuration later!
!!!

3. Navigate to your current instance and click on the Security tab.
   
4. Click on the security group associated with your server.

5. Click on **Edit inbound rules**.

6. Add a new rule:
  - Type: SSH
  - Port: 22
  - Source: Custom (paste the private IP address of your new server followed by `/32`). Eg. 172.00.00.000/32

7. Click Save rules.

This ensures that the new server can securely access the current server to transfer all your data.

## Complete the Restore

Now you're ready to finish the migration:

1. Connect back to your new server using your preferred **SSH client** or terminal.

2. Switch to root user:
```
sudo bash
```

3. Navigate to the root directory:
```
cd /root
```

4. Run the restore command again, replacing the IP address below with your current server's private IP:
```
./cms.sh restore 172.00.00.000
```

This time, with the SSH key authorized and security group configured, the restore process will complete successfully and transfer all your CMS data to the new server.

5. Log in to your new Solodev CMS and verify that all content, configurations, and data have been successfully migrated.

And that's it! Your CMS is now fully migrated to your new server with all content, configurations, and data intact. Remember to test your CMS on the new server to ensure everything is working as expected before decommissioning the current server.

## Troubleshooting

### Servers in Different VPCs or AWS Accounts

If your servers are in different VPCs or AWS accounts, they cannot communicate using private IP addresses. Follow these steps instead:

1. Use your current server's **public IP address** instead of the private IP in the restore command.

2. Update the security group on your current server to allow your new server's **public IP address**:
   - Get both servers' public IP addresses from their EC2 instance details
   - Navigate to your current server's security group and click **Edit inbound rules**
   - Change the SSH rule (port 22) source to: `[new-server-public-ip]/32`

3. Run the restore commands using the current server's public IP address.