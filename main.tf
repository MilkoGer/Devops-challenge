# add some terraform code here (feel free to separate the configuration if you think it makes sense)

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
