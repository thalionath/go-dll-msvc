package main

import "C"
import "fmt"

//export PrintHello
func PrintHello() {
	fmt.Println("Hello World!")
}

func main() {
	// Need a main function to make CGO compile package as C shared library
}
