## Grid Kubernetes deploy 

Naive deployment of the Guardian Grid into Kubernetes.

Uses Nginx ingress to remap the services from vhosts to subpaths. Allows the entire application to run from a single host name.


### Prerequisites

Assumes that the long lived AWS dependencies (S3 buckets, Dynamo tables and message queues) already exist 
in a seperate AWS account and that they will be accessed using an AWS access key and secret.

References to these AWS resources are marked with `TODO` in the configmap sources in `config`.

The image urls are public but you should questioning their contents. 
The availablity and contents of the images is subject to change without warning.



