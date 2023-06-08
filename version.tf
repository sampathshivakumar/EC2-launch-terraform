terraform {
    required_version = "~>1.4.0"       
    required_providers {
        aws = {                          // local name of provider can be anything.
            source = "hashicorp/aws"
            version = "5.1.0"  
    }

}
}
provider "aws" {                         // same local name should be used here also.
    profile = "default" // optional for default profile.
    region = var.aws_region
}

