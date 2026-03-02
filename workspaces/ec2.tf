resource "aws_instance" "workspace" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = lookup(var.environment, terraform.workspace)
    vpc_security_group_ids = ["sg-0a85f1d5ba9192ffc"]

    tags = {
        Name = "terraform-${terraform.workspace}"
    }
}