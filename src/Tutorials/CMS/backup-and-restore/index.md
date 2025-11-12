Moving your CMS to a new server is a straightforward process that ensures all your data, configurations, and content transfer seamlessly. This tutorial will walk you through backing up your existing server and restoring everything to your new server!

## Prerequisites

- Have an existing <a href="https://portal.aws.amazon.com/billing/signup?refid=em_127222&p=free&c=hp&z=1&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/support" rel="noopener noreferrer" target="_blank">AWS Account :icon-link-external:</a>
- Have a [Solodev CMS](/quickstart).

## Backup from the Current Server

Let's start by creating a backup of your current CMS installation. Here's how:

1. Go to your AWS account and sign in to the AWS Management Console.

2. Navigate to EC2 and click on your stack.

3. Click on Connect — this will open the terminal in your browser.

4. Type the following command to switch to root user (this gives you administrator privileges):

```
sudo bash
```

5. Navigate to the root directory:

```
cd /root
```

6. Run the backup command:

```
./cms.sh backup
```

7. Once finished, terminate the session.

This will create a complete backup of your CMS, including all files, databases, and configurations.

## Initiate Restore on New Server

1. Get the private IP address of your new server by navigating to your new EC2 instance and copying the Private IPv4 address from the instance details.

**Pro Tip:** Make sure to note down the private IP address of your new server - you'll need it for the security group configuration later!

2. From EC2, go to the new server.

3. Click on your stack and click Connect.

4. Switch to root user by running:

```
sudo bash
```

5. Navigate to the root directory:

```
cd /root
```

6. Run the restore command:

```
./cms.sh restore $current-server-ip
```

For example:

```
./cms.sh restore 172.00.00.000
```

7. The system will provide you with a set of commands (typically 4 lines) to configure SSH and authorize the connection.

**Note:** Copy the entire output exactly as shown — you'll need to paste and run these commands on your current server in the next step.

8. Connect to your current server again through EC2 (click on your current stack and click Connect).

9. Switch to root user:
```
sudo bash
```

10. Paste and run the complete command provided in the previous step. This will configure SSH settings, restart the SSH service, and authorize your new server to access the current server.

11. Once complete, terminate the session.

## Configure Network Security

Before completing the restore, you'll need to allow your new server to communicate with the current one:

1. In the AWS Console, navigate to EC2 and go to Security Groups.
   
2. Find and select the security group associated with your current server.

3. Click on Edit inbound rules.

4. Add a new rule:
  - Type: SSH
  - Port: 22
  - Source: Custom (paste the private IP address of your new server)

5. Click Save rules.

This ensures that the new server can securely access the current server to transfer all your data.

## Complete the Restore

Now you're ready to finish the migration:

1. Connect back to your new server through EC2.

2. Switch to root user:
```
sudo bash
```

3. Navigate to the root directory:
```
cd /root
```

4. Run the restore command again:
```
./cms.sh restore $current-server-ip
```

For example:
```
./cms.sh restore 172.00.00.000
```

This time, with the SSH key authorized and security group configured, the restore process will complete successfully and transfer all your CMS data to the new server.

And that's it! Your CMS is now fully migrated to your new server with all content, configurations, and data intact. Remember to test your CMS on the new server to ensure everything is working as expected before decommissioning the current server. Happy migrating!