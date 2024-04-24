# Define a basic OpenStack compute instance
resource "openstack_compute_instance_v2" "abc3" {
  name        = "abc3"
  image_id  = "cfe32483-65b9-4532-9459-ee6904c02e09" 
  flavor_name = "S.4"      
  key_pair    = "ter-kp" 
  network {
    name = "External_Net"
    uuid= "6135a960-6bb1-4a4e-837b-5946e1440557"  
   }
  security_groups= ["RDP"]

block_device {
    source_type = "image"
    destination_type = "volume"
    volume_size = 30  # Set the size of the volume in GB
    uuid= "cfe32483-65b9-4532-9459-ee6904c02e09"
  }

}


#output "instance_ips" {
 # value = openstack_compute_instance_v2.abc3.*.access_ip_v4
#}




# Define a basic OpenStack compute instance
resource "openstack_compute_instance_v2" "vmachine2" {
  name        = "vmachine2"
 image_id  = "cfe32483-65b9-4532-9459-ee6904c02e09"
 flavor_name = "S.4"
  key_pair    = "ter-kp"
  network {
    name = "External_Net"
    uuid= "6135a960-6bb1-4a4e-837b-5946e1440557"
   } 
    security_groups= ["RDP"] 

 


block_device {
    source_type = "image"
    destination_type = "volume"
    volume_size = 30  # Set the size of the volume in GB
    uuid= "cfe32483-65b9-4532-9459-ee6904c02e09"
  
 }
}


#output "instance_ips" {
#  value = openstack_compute_instance_v2.vmachine2.*.access_ip_v4
#}


# Define a basic OpenStack compute instance
resource "openstack_compute_instance_v2" "vmachine3" {
  name        = "vmachine3"
  image_id  = "cfe32483-65b9-4532-9459-ee6904c02e09"
  flavor_name = "S.4"
  key_pair    = "ter-kp"
  network {
    name = "External_Net"
    uuid= "6135a960-6bb1-4a4e-837b-5946e1440557"
  }
     security_groups= ["RDP"]
  



block_device {
    source_type = "image"
    destination_type = "volume"
    volume_size = 30  # Set the size of the volume in GB
    uuid= "cfe32483-65b9-4532-9459-ee6904c02e09"
  }

}

#output "instance_ips" {
#  value = openstack_compute_instance_v2.vmachine3.*.access_ip_v4
#}



#resource "null_resource" "run_ansible_playbook" {
  # This resource serves as a trigger for the local-exec provisioner
#  provisioner "local-exec" {
#    command = "terraform-inventory -i /root/openstack/terraform.tfstate > ansible_inventory.ini; ansible-playbook -i /root/openstack/ansible_inventory.ini /root/openstack/install_nginx.yml"
#  }
#}
