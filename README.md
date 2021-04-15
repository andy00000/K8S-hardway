# K8S-hardway

Based on study materials - https://github.com/kelseyhightower/kubernetes-the-hard-way/tree/master/docs

Sequence of files in relation to sections of the manual:

Doc 1 - Prerequisites (Operations were performed manually on AWS)

Doc 2 - Installing the clent tools (bash: InstallClientTools.sh)

Doc 3 - Provisioning Compute Resources (/ans-project/kub_aws.yml - ansible playbook for compute resourses)

Doc 4 - Provisioning a CA and Generating TLS Certificates (Generate - /Certificates/k8scertificates.sh, generate autohosts.txt - /Certificates/addresses.sh 
        distribute - /Certificates/CopyWorkersCert.yml, /Certificates/CopyControllersCert.yml)

Doc 5 - Generating Kubernetes Configuration Files for Authentication (Generate - /Certificates/ClientAuthCert.sh, 
        distribute - /Certificates/CopyWorkersKConf.yml, /Certificates/CopyControllersKConf.yml)

Doc 6 - Generating the Data Encryption Config and Key (Genetate - /Certificates/EncKeyGeneration.sh distribute - /Certificates/CopyControllersEkCf.yml)

Doc 7 - Bootstrapping the etcd Cluster (/etcd/BootstrapETCDcm.sh - bash script for distribution, distribute and run - /etcd/CopyBootstrapToCtrl.yml)

Doc 8 - Bootstrapping the Kubernetes Control Plane
        Provision the Kubernetes Control Plane (/boot_cntrl_panel/BootstrapKCP.sh - bash script for distribution, distribute and run - /boot_cntrl_panel/CopyBootstrapToCtrl.yml) 
        RBAC for Kubelet Authorization (/boot_cntrl_panel/RBAC.sh - bash script for distribution, distribute and run - /boot_cntrl_panel/RBAC_copy.yml)
	Install and configure nginx load balancer to separate instance (/boot_cntrl_panel/nginx_install.sh - bash script for distribution, nginx.conf - confg file for balancer, balancer.yml - distribute bash and config)

