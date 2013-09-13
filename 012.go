package main

import "fmt"

func triangle(n int) (triangle, numFactors int) {
	for i := 0; i <= n; i++ {
		triangle += i
	}

	for i := 1; i <= triangle; i++ {
		if triangle%i == 0 {
			numFactors++
		}
	}

	return triangle, numFactors
}

func printTriangle(n int) {
	triangle, numFactors := triangle(n)

	if numFactors >= 200 {
		fmt.Printf("∆ %v: %v has %v factors\n", n, triangle, numFactors)
	}
}

func main() {
	do := true
  // 76576500
	for i := 7776; do; i++ {
		printTriangle(i)
	}
}
