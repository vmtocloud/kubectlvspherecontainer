# The kubectl vsphere container 
Run run kubectl vsphere commands in a container 

# Instructions: 
1. Clone this repository locally
2. edit the Dockerfile to point to your Tanzu Server URL or address
3. make the docker image: docker build -t kubectlvsphere .
4. run the docker image with the five inputs docker run kubectlvsphere serveraddress username password namespace locationofyamlfile for example: docker run kubectlvsphere 192.168.110.200 jenkins@vsphere.local VMware1! tanzu https://raw.githubusercontent.com/vmtocloud/jenkins_tanzu_stuff/main/centos-vm.yaml
