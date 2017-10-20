variable "regex" {
  type        = "string"
  description = "Regular expression to be matched against. re2 expressions are supported. https://github.com/google/re2/wiki/Syntax"
}

variable "actual" {
  type        = "string"
  description = "Actual string value"
}
