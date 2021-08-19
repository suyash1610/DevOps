output "bastion-output" {
    value = aws_instance.bastion
}

output "application-output" {
    value = aws_instance.application
}