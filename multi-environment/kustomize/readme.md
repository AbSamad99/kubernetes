## Kustomize

This is built into kubernetes. You have to define the base yaml files in the `base` directory. Next create the `staging` and `production` directories which will contain patches which can be applied to the base files during deployment to differentiate the deployments.
