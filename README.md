Aim of this project is to launch an EKS cluster using terraform. Once set, we launch the guestbook application.
You can then taint all nodes and try adding workers using terraform.
.

# Pre-requisites
- Verify your terraform version (>= 1.24.0)
- Install the aws-iam-authenticator
	> https://github.com/kubernetes-sigs/aws-iam-authenticator

This project is using an AWS profile named "meetup". Make sure you have a similar profile (using *aws configure*), or either set your own profile name.

# Useful Links
https://github.com/terraform-aws-modules/terraform-aws-eks