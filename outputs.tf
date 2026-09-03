
output "jenkins_public_ip" {
  description = "Public IP address of Jenkins server"
  value       = aws_instance.jenkins.public_ip
}

output "jenkins_url" {
  description = "Jenkins URL"
  value       = "http://${aws_instance.jenkins.public_ip}:8080"
}

output "ssh_command" {
  description = "SSH command"
  value       = "ssh -i <your-key.pem> ubuntu@${aws_instance.jenkins.public_ip}"
}