terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}


provider "openstack" {
  user_name   = "hemant.singh"
  tenant_name = "Migration"
  password    = "*WI5q0HFv5uLj9Z8!^3D"
  auth_url    = "https://api-us-east-at-1.openstack.acecloudhosting.com:5000"
  region      = "us-east-at-1"
}
