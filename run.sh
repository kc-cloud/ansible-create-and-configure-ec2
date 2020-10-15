#!/bin/bash

vm_name=rhel-instance
vm_type=t2.micro
vm_ami_id=ami-xxxxxxx
vm_ssh_user=ec2-user
vm_subnet_id=subnet-xxxxxx
vm_vpc_id=vpc-xxxxxxx
vm_sg_id=sg-xxxxx
vm_iam_instance_profile=test-access
vm_key_name=mgmt-keypair
vm_key_file_loc=~/keys/mgmt-keypair.pem
ansible-playbook setup-ec2.yml \
   --connection local \
   --extra-vars vm_ami_id=${vm_ami_id} \
   --extra-vars vm_name=${vm_name} \
   --extra-vars vm_type=${vm_type} \
   --extra-vars vm_subnet_id=${vm_subnet_id} \
   --extra-vars vm_vpc_id=${vm_vpc_id} \
   --extra-vars vm_sg_id=${vm_sg_id} \
   --extra-vars vm_ssh_user=${vm_ssh_user} \
   --extra-vars vm_key_name=${vm_key_name} \
   --extra-vars vm_key_file_loc=${vm_key_file_loc} \
   --extra-vars vm_iam_instance_profile=${vm_iam_instance_profile}

