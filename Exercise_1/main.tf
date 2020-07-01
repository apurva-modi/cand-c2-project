# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/apurvamodi/.aws/credentials" 
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
    count = 4
    ami = "ami-09d95fab7fff3776c"
    instance_type = "t2.micro"
    subnet_id = "subnet-a83cfcce"
    
    tags = {
        Name = "Udacity T2"
    }

}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4" {
    ami = "ami-09d95fab7fff3776c"
    instance_type = "m4.large"
    subnet_id = "subnet-a83cfcce"
    count = 2
    tags  = {
        Name = "Udacity M4"
    }
}
