##Requisistos 
- Tener un api key, crearla (/Datacenter/apikey)
- Permisos al usuario y al token (Administrator)
- Tener un CT template (/Datacenter/pve/local(pve))
- Tener una ISO Image para la VM en (/Datacenter/pve/local(pve))

##Crea el archivo terraform.tfvars
- pm_api_url           = "https://10.41.116.138:8006/api2/json"
- pm_api_token_secret  = "37494dfb-ea1f-415XXXXXXXXXXXX"
- pm_node              = "pve"
- hostname             = "lxc-debian12-demo-terraform"

##terraform init
terraform plan
terraform apply