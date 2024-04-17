
# Archive S3 GitHub Terraform Workflow

This repository, `archive-s3-gh`, demonstrates a reusable GitHub Actions workflow utilizing Terraform for the purpose of deploying and managing S3 buckets configured for data archiving across multiple AWS regions. The S3 buckets are set up with intelligent tiering to optimize costs according to access patterns.

## Features

- **GitHub Actions Workflow**: Leverage `action.yml` for defining the reusable Terraform job.
- **Cross-Region Deployment**: Apply the Terraform configurations across four different AWS regions.
- **Intelligent Tiering**: S3 buckets are configured to automatically move data to the most cost-effective access tier.
- **Terraform Modules**: Modular Terraform setup to ensure reusability and simplicity in managing infrastructure as code.

## Workflow Description

- `action.yml`: Contains the definition of the GitHub Actions workflow for Terraform, making it reusable for different environments or scenarios.
- `deploy.yml`: Utilizes the `action.yml` to deploy the S3 buckets for archiving purposes.

## Directory Structure

```plaintext
/
├── .github/
│   └── workflows/
│       ├── action.yml        # Reusable GitHub Actions workflow
│       └── deploy.yml        # Workflow that implements the action for deployment
├── .idea/                   # IDE-specific settings
├── main.tf                  # Main Terraform configuration file
├── variables.tf             # Terraform variables definition
└── *.tfvars                 # Terraform variable files for different regions
```

## Usage

To use the GitHub Actions workflow in your project, include `action.yml` in your workflow directory and reference it in your main deployment workflow file `deploy.yml`. Customize your Terraform variables within the `.tfvars` files according to your specific regional requirements.

## Regions Deployed

- `eu-south-1`
- `us-east-1`
- `us-west-1`
- `ap-southeast-1`

Refer to the individual `.tfvars` files for configurations specific to each region.

## Contributing

Contributions are welcome. Please open an issue or submit a pull request with your suggestions or improvements.

## License

Distributed under the MIT License. See `LICENSE` for more information.
