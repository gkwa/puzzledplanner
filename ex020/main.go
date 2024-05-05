package main

import (
	"fmt"

	"github.com/taylormonacelli/puzzledplanner/version"
)

func main() {
	fmt.Printf("Version: %s, %s\n", version.Version, version.FullGitSHA)
	fmt.Printf("Build Date: %s\n", version.Date)
	fmt.Printf("Go Version: %s\n", version.GoVersion)
}
