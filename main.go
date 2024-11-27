package main

import (
	"crypto/md5"
	"fmt"
	"github.com/ahmetb/go-linq"
)

func main() {
	fmt.Println("Hello, wold")
	fmt.Println(md5.Sum([]byte("hello")))
	linq.From([]int{1, 2, 3}).ForEach(func(i interface{}) {
		fmt.Println(i)
	})
}
