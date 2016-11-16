package main

import (
    "flag"
)

var help = flag.Bool("help", false, "Print help docs")
var words = flag.Int("words", 3, "Number of words in each passphrase")
var gen = flag.Int("gen", 10, "Number of passphrases to generate")

flag.Parse()

func main() {

}
