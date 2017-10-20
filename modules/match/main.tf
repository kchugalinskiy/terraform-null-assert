resource "null_resource" "checker" {
  provisioner "local-exec" {
    command = "echo \"String \"${var.actual}\" didn't match regex \"${var.regex}\"  \" && exit 1"
  }

  count = "${length(replace(var.actual, format("/%s/", var.regex), "")) == 0 ? 0 : 1}"
}
