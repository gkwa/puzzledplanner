package main

import (
   "fmt"
   _ "embed"
)

//go:embed git-describe.txt
var gitDescribe string

func main() {
   fmt.Println(gitDescribe)
}
