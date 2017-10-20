resource "null_resource" "checker" {
  provisioner "local-exec" {
    command = "echo 'Condition \"${var.condition}\" failed' && exit 1"
  }

  count = "${var.condition ? 0 : 1}"
}
