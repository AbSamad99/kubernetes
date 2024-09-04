# Managing Multiple Environments

As we know, managing multiple environments is a key aspect of DevOps and CI/CD. Thus it should come as no suprise that there exist tools which we can leverage to deploy our clusters to various environments. We will be deploying the `api-node` to multiple environments with different tools to demonstrate how it can be done. Here are the tools we will use:

1. Kustomize - Uses patches to patch in values to deployments
2. Helm - Deploy different environments based on different `values.yaml` files passed in during `helm install`.
