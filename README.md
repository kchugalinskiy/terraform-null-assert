# Introduction

Assert is a terraform assertion utility. As far you may know currently there is no any invariant processing support in Terraform itself or anywhere in its community modules. This library was introduced to fullfill this space. Moreover: this library may be used in your custom modules unit testing.

General programming rule is that each time you assume something you must write down your assumption in code. Otherwise later or earlier you'll get some problems.

# Prerequisites

At the moment Windows OS is not supported. There are no any known terraform limitations within concise versions. Please inform me in case you find some version-specific issues.

# Basic usage

Basic usage is pretty simple: you create check module, you pass condition variable and you get error if it doesn't interpolate to true value. Example presented below ensures that at least one subnet exists in given AWS VPC with vpc_id = "vpc-funnyid".
```
data "aws_subnet_ids" "example" {
  vpc_id = "vpc-funnyid"
}

module "subnets_are_present" {
    source    = "kchugalinskiy/assert/null"
    condition = "${0 != length(data.aws_subnet_ids.example.ids)}"
}
```

# Features

As a development of IaaC concept, some common features of assertions in regular programming languages were introduced. Additional supported operators are listed below:
 * `ACTUAL eq EXPECTED`
 * `ACTUAL neq UNEXPECTED`
 * `ACTUAL gt(>) EXPECTED`
 * `ACTUAL ge(>=) EXPECTED`
 * `ACTUAL lt(<) EXPECTED`
 * `ACTUAL le(<=) EXPECTED`
 * `ACTUAL match REGEX`

You may find usage snippets in examples directory.
