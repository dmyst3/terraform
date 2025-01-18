$ cat <<EOT >> hello.tf
resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
EOT
