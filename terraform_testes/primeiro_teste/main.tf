variable "myvar" {
    type = "string"
    default = "hello terraform"
}

variable "mymap" {
    type = map(string)
    default = {
      mykey = "my value"
      abobrinha = "muito ruim"
    }
}

variable "mylist" {
    type = list
    default = [1,2,3,4,5]
}