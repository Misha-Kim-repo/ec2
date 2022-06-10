############Bastion 서버 Inbound Security Group rule############
# variable에서 받은 허용할 IP를 받아(list 타입) 22번 포트로 오픈 처리
resource "aws_security_group_rule" "this" { 
    type = "ingress"
    from_port = 22
    to_port   = 22
    protocol  = "tcp" 
    cidr_blocks = var.security_groups_rule
    security_group_id = aws_security_group.this.id
}


############default Security Group 작성############
# 기본적인 VPC 설정 및 outbound(egress) 설정만 들어있는 SG
resource "aws_security_group" "this" {
    vpc_id = var.aws-vpc

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
   }
}