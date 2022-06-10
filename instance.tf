resource "ami_instance" "EC2" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    subnet_id     = "${var.subnet_id}"
    
    key_name = "Misha.K"
    security_groups = "${var.security_groups}"

}