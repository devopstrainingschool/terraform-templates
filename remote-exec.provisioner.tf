provisioner "remote-exec"  {
    inline  = [
      "command here separate by a commas"
      
    
      ]
   }
connection {
    type         = "ssh"
    host         = self.public_ip
    user         = "ec2-user" # change user"ec2-user" for amz
    timeout = "2m"
    agent = false
    private_key  = tls_private_key.anael2.private_key_pem #"${file("anael.pem")}" 
   }
  
