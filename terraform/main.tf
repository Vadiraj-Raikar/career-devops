provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "instance-1" {
    ami = "ami-0614680123427b75e"
    instance_type ="t2.micro"
    security_groups = {"vadirajv"}
    key_name = "raju"
    user_data = file("grafana.sh")
    tags = {
        Name = "Grafana-server"
    }
}

resource "aws_instance" "instance-2" {
    ami = "ami-0614680123427b75e"
    instance_type ="t2.micro"
    security_groups = {"vadirajv"}
    key_name = "raju"
    tags = {
        Name = "Node-expo"
    }
}