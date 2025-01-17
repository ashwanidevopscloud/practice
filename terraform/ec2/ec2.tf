resource "aws_security_group" "sg" {
    name="allow-ssh"
    description = "aws-it allow aws ssh port number 22"

    ingress{
         from_port = 22
         to_port = 22
         protocol = "tcp"
         cidr_blocks = ["0.0.0.0/0"]
         ipv6_cidr_blocks = [ "::/0" ]

    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
        name = "allow-everything-sg"
    }
}

resource "aws_instance" "" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["aws_security_group.sg.id"]
    tags={
        name="ec2-terraform"
    }

  
}