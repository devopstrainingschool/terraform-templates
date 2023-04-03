resource "aws_instance" "BASTIONHOST_A" {
    ami = "ami-02f97949d306b597a"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.main.id
    key_name = aws_key_pair.keypair.key_name
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    depends_on = [aws_security_group.allow_tls]
    tags = {
        Name = "my-ec2"
       
    }

}
