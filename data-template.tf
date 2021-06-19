data "template_file" "loaded_bootstrap_file" {
  template = file("${path.module}/bootstrap.txt")
}