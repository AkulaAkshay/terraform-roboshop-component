locals {
  ami_id = data.aws_ami.joindevops
  common_name_suffix = "${var.project_name}-${var.environment}" # roboshop-dev
  public_subnet_ids = split("," , data.aws_ssm_parameter.public_subnet_ids.value)
  private_subnet_id = split("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
  sg_id = data.aws_ssm_parameter.sg_id
  tg_port = "${var.component}" == "frontend" ? 80 : 8080
  vpc_id = data.aws_ssm_parameter.vpc_id
  health_check_path = "${var.component}" == "frontend" ? "/" : "/health"
  common_tags = {
    Project = var.project_name
    Environment = var.environment
    Terraform = "true"
  }
}