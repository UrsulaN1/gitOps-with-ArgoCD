
#!/bin/bash

set -e

# Update packages
apt-get update -y

# Install Java
apt-get install -y fontconfig openjdk-21-jre

# Add Jenkins repository key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key \
  -o /usr/share/keyrings/jenkins-keyring.asc

# Add Jenkins repository
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" \
  > /etc/apt/sources.list.d/jenkins.list

# Update package list
apt-get update -y

# Install Jenkins
apt-get install -y jenkins

# Enable and start Jenkins
systemctl enable jenkins
systemctl start jenkins