# AWS CloudFormation Template: VPC with Public and Private Subnets


This CloudFormation template allows you to create an AWS Virtual Private Cloud (VPC) with public and private subnets. The VPC includes an internet gateway for public subnet internet access, a NAT Gateway for private subnet internet access, and appropriate route tables. Additionally, an Access Control List (ACL) is created to control inbound and outbound traffic for the public subnet.

## Steps to Deploy the Stack

**Prerequisites:**

Before deploying the CloudFormation stack, ensure you have the necessary AWS credentials and permissions to create resources like VPC, subnets, internet gateways, NAT Gateway, and ACLs.

- Access the AWS CloudFormation Console:

- Log in to your AWS Management Console and navigate to the AWS CloudFormation service.

- Create Stack:

- Click on "Create stack" to start the stack creation process.

- Choose "Template is ready" and "Upload a template file."

- Upload the YAML template file (e.g., "vpc-template.yaml") and click "Next."

- Specify Stack Details:

- Enter a stack name of your choice (e.g., "MyVPCStack").

- Provide any necessary parameters (if applicable) as required by the CloudFormation template. In this case, the template does not require any parameters.

- Click "Next."

- Configure Stack Options:

You can configure additional options like tags, permissions, and monitoring if needed. For this example, we'll use the default options.

- Click "Next."

**Review:**

- Review the stack details to ensure everything is correct.

- Check the box to acknowledge that CloudFormation will create IAM resources (if applicable).

- Click "Create stack" to initiate the stack creation.

**Stack Creation Progress:
**
- Wait for the CloudFormation stack to be created. This process may take a few minutes.

- Once the status changes to "CREATE_COMPLETE," the stack has been successfully deployed.

- Verify the Resources:

- You can navigate to different AWS services like VPC, subnets, internet gateways, and NAT Gateways in the AWS Management Console to confirm the resources' creation and configurations.

- The VPC should have two subnets: one public subnet with an internet gateway and one private subnet with a NAT Gateway.

- Additionally, the public subnet should have an ACL that allows HTTP (port 80), HTTPS (port 443), and SSH (port 22) traffic from the internet.

- Access Resources:

- Now that the stack is created, you can launch EC2 instances or other resources in the public and private subnets to deploy your applications securely.

- Clean Up:

If you no longer need the resources, remember to delete the CloudFormation stack to avoid ongoing charges.
