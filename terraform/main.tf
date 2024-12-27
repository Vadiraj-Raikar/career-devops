provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "instance-1" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    security_groups = ["vadirajv"]
    key_name = "december"
    user_data = file("grafana.sh")
    tags = {
        Name = "Grafana-server"
    }
}
    

    


resource "aws_instance" "instance-2" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    security_groups = ["vadirajv"]
    key_name = "december"
    tags = {
        Name = "Node-expo"
    }
}
