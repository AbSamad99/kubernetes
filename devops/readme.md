## Tilt

Manually deploying and testing the changes to your cluster again and again is quite a tedious process. It makes sense to use tools to automate this process. Similarly, you should never keep secrets in your yaml files and instead use a secrets manager to handle that. Tilt allows for configuring your application such that each service will automatically rebuild/reload whenever changes are made. It works with KinD so no need to spin up a GKE cluster to try it.

NOTE: Make sure you bring up the application setup before running tilt
