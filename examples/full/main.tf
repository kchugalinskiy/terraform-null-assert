module "assert-conditional" {
    source = "kchugalinskiy/assert/null"
  condition = "${1 != 2}"
}

module "assert-equality" {
  source = "kchugalinskiy/assert/null//modules/eq?ref=v0.0.2"
  expected = 1
  actual   = 1
}

module "assert-equality-strings" {
  source = "kchugalinskiy/assert/null//modules/eq?ref=v0.0.2"
  expected = "hello world"
  actual   = "hello world"
}

module "assert-unequality" {
  source = "kchugalinskiy/assert/null//modules/neq?ref=v0.0.2"
  unexpected = "hello world"
  actual     = "hello"
}

module "assert-greater-or-equal" {
  source = "kchugalinskiy/assert/null//modules/ge?ref=v0.0.2"
  expected = 0
  actual   = 2
}

module "assert-strict-greater" {
  source = "kchugalinskiy/assert/null//modules/ge?ref=v0.0.2"
  expected = 0
  actual   = 1
}

module "assert-less-or-equal" {
  source = "kchugalinskiy/assert/null//modules/ge?ref=v0.0.2"
  expected = 2
  actual   = 0
}

module "assert-strict-less" {
  source = "kchugalinskiy/assert/null//modules/ge?ref=v0.0.2"
  expected = 1
  actual   = 0
}

module "assert-match-regex" {
  source = "kchugalinskiy/assert/null//modules/match?ref=v0.0.2"
  regex  = "[a-z]*"
  actual = "rego"
}
