rgs = {
  rg1 = {
    rg_name     = "preprod-rg"
    location = "centralindia"
  }
}
vnets = {
  vnet1 = {
    vnet_name = "preprod-vnet1"
    location  = "centralindia"
    rg_name   = "preprod-rg"
    a_space   = ["10.0.0.0/16"]
  }
  vnet2 = {
    vnet_name = "preprod-vnet2"
    location  = "centralindia"
    rg_name   = "preprod-rg"
    a_space   = ["10.2.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    subnet_name = "fronted-subnet"
    rg_name     = "preprod-rg"
    vnet_name   = "preprod-vnet1"
    a_prefixes  = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name = "backend-subnet"
    rg_name     = "preprod-rg"
    vnet_name   = "preprod-vnet1"
    a_prefixes  = ["10.0.2.0/24"]
  }
  subnet3 = {
    subnet_name = "app-gateway-subnet"
    rg_name     = "preprod-rg"
    vnet_name   = "preprod-vnet1"
    a_prefixes  = ["10.0.3.0/24"]
  }
  subnet4 = {
    subnet_name = "bastion-subnet"
    rg_name     = "preprod-rg"
    vnet_name   = "preprod-vnet1"
    a_prefixes  = ["10.0.0.0/26"]
  }
}
pip = {
  pip1 = {
    pip_name   = "fronted-pip"
    rg_name    = "preprod-rg"
    location   = "centralindia"
    allocation = "Static"
  }
  pip2 = {
    pip_name   = "backend-pip"
    rg_name    = "preprod-rg"
    location   = "centralindia"
    allocation = "Static"
  }
}
vms = {
  vm1 = {
    nic_name       = "fronted-nic"
    location       = "centralindia"
    rg_name        = "preprod-rg"
    subnet_id      = "fronted-subnet"
    vnet_name      = "preprod-vnet1"
    public_ip      = "fronted-pip"
    config_name    = "internal"
    ip_allocation  = "Dynamic"
    vm_name        = "fronted-vm"
    vm_size        = "Standard_D4_v5"
    admin_user     = "atulsingh"
    admin_password = "viveksingh@12345"
    caching        = "ReadWrite"
    storage_type   = "Standard_LRS"
  }
  vm2 = {
    nic_name       = "backend-nic"
    location       = "centralindia"
    rg_name        = "preprod-rg"
    subnet_id      = "backend-subnet"
    vnet_name      = "preprod-vnet1"
    public_ip      = "backend-pip"
    config_name    = "internal"
    ip_allocation  = "Dynamic"
    vm_name        = "backend-vm"
    vm_size        = "Standard_D2as_v7"
    admin_user     = "atulsingh"
    admin_password = "viveksingh@12345"
    caching        = "ReadWrite"
    storage_type   = "Standard_LRS"
  }
}