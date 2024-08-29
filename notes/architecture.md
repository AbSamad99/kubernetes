## Architecture

<figure>
    <img src="kubernetes-cluster-architecture.svg" alt="Kubernetes architecture" width="800">
</figure>

### Control Plane Components:

1. kube-apiserver: Acts as the front end of the Kubernetes control plane, providing an interface for communication between all components in the cluster. It exposes the Kubernetes API and processes REST operations, validating and executing them by updating the state of the etcd store.

2. etcd: A consistent and highly available key-value store used by Kubernetes to store all cluster data, including the configuration data, state, and status of all resources in the cluster. It serves as the backbone for maintaining cluster state.

3. kube-scheduler: Responsible for scheduling pods (a group of containers) to the worker nodes based on various constraints and requirements like resource availability, quality of service requirements, data locality, affinity, and anti-affinity specifications, and more.

4. kube-controller-manager: Runs the various controllers for the cluster, including the node controller (for detecting and responding when nodes go down), replication controller (for ensuring the correct number of pods for every replication controller object in the system), and more. It manages different controller processes to ensure the desired state of the system matches the current state.

5. cloud-controller-manager: Interacts with the underlying cloud providers' APIs to manage resources like load balancers, storage, and networking. It runs only controllers specific to your cloud provider.

### Node Components:

1. kubelet: An agent that runs on each node in the cluster. It ensures that containers are running in a pod as expected. Kubelet watches for changes in pod specifications and ensures that the containers described in the pod specs are running and healthy.

2. kube-proxy: Maintains network rules on each node. It manages IP translation and routing to ensure that each pod has a unique IP and that the network can communicate with each pod across nodes in the cluster.

3. Pods: The smallest deployable units in Kubernetes, which can contain one or more containers. Pods are created and managed by the kubelet on each node. They run the actual application or service.

### Container Interfaces

In Kubernetes, CRI, CNI, and CSI are interfaces designed to allow the integration of various container runtime, networking, and storage solutions. Here's a brief overview of each:

#### 1. CRI (Container Runtime Interface)

The Container Runtime Interface is an API that connects the kubelet to the container runtime (the software responsible for running containers). This allows Kubernetes to support multiple container runtimes. The CRI standardizes how Kubernetes interacts with different container runtimes, enabling Kubernetes to manage pods and containers consistently, regardless of the underlying runtime.

- Examples of Container Runtimes that use CRI: Docker (deprecated in Kubernetes 1.20 and replaced by containerd), containerd, CRI-O.

#### 2. CNI (Container Network Interface)

The Container Network Interface is a framework to configure network interfaces in Linux containers, providing a standardized way for container networking solutions to integrate with Kubernetes. CNI ensures that each pod gets its own IP address and that there is a seamless and efficient network connection between pods and other network services.

- Examples of CNI plugins: Calico, Flannel, Weave Net, Cilium.

#### 3. CSI (Container Storage Interface)

The Container Storage Interface is a standard for exposing storage systems to containerized workloads on Kubernetes. CSI allows Kubernetes to manage various storage providers and makes it easier to implement new volume plugins without modifying Kubernetes core code.

- Examples of CSI drivers: AWS EBS CSI driver, Google Cloud Persistent Disk CSI driver, NFS CSI driver, Ceph RBD CSI driver.
