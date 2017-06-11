package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

func pingponghandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "pong")

}

func main() {
	http.HandleFunc("/ping", pingponghandler)
	http.HandleFunc("/", handler)
	http.ListenAndServe(":5000", nil)
}
