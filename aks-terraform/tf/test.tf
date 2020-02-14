module "config" {
    source = "./modules/configuration"
    name = "ericmai-tf-test2"
    location = "westus"
    prefix = "emtf"
}

module "init" {
    source = "./modules/azure"
    config = module.config
}