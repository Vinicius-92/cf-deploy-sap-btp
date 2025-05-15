![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

# CF Deploy SAP BTP

This GitHub Action deploys a Multi-Target Application (MTA) to a Cloud Foundry environment on SAP BTP. It requires you to specify various configuration options through inputs.

## Inputs:

**MTAR_PATH:** Required. The path to your MTA file, relative to the GitHub workspace.

**API:** The Cloud Foundry API endpoint.

**USER:** The Cloud Foundry user.

**PASSWORD:** The Cloud Foundry password.

**ORG:** The Cloud Foundry organization.

**SPACE:** The Cloud Foundry space to deploy to.

> **_NOTE:_**  It is recommended to use GitHub Secrets to store this information for better security.

## Usage:

To use this action, add the following steps to your .github/workflows YAML file:

```yaml
steps:
- name: CF Deploy SAP BTP
  uses: Vinicius-92/cf-deploy-sap-btp@v1
  with:
    MTAR_PATH: 'path/file.mtar'
    API: ${{ secrets.CF_API }}
    USER: ${{ secrets.CF_USERNAME }}
    PASSWORD: ${{ secrets.CF_PASSWORD }}
    ORG: ${{ secrets.CF_ORG }}
    SPACE: ${{ secrets.CF_SPACE }}
