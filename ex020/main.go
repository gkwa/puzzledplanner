package main

import (
	"fmt"

	"github.com/taylormonacelli/puzzledplanner/version"
)

func main() {
	fmt.Printf("Version: %s\n", version.Version)
	fmt.Printf("Build Date: %s\n", version.Date)
	fmt.Printf("Go Version: %s\n", version.GoVersion)
}
