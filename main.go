package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Printf("IAC application started: %s", time.Now().Format(time.RFC822))
}
