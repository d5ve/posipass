package main

import (
	"flag"
	"fmt"
	"os"
)

var help = flag.Bool("help", false, "Print help docs")
var words = flag.Int("words", 3, "Number of words in each passphrase")
var gen = flag.Int("gen", 10, "Number of passphrases to generate")

func main() {
	flag.Parse()

	if *help {
		fmt.Fprintf(os.Stderr, "Usage of %s:\n", os.Args[0])
		flag.PrintDefaults()
		os.Exit(0)
	}

}
