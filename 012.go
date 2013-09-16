package main

import (
  "fmt"
  "math"
)

func triangle(n int) (triangle, numFactors int) {
	for i := 0; i <= n; i++ {
		triangle += i
	}

	for i := 1; i <= int(math.Sqrt(float64(triangle))); i++ {
		if triangle%i == 0 {
			numFactors += 2
		}
	}

	return triangle, numFactors
}

func printTriangle(n int, c chan []int) {
	triangle, numFactors := triangle(n)

	// if numFactors >= 200 {
		// fmt.Printf("∆ %v: %v has %v factors\n", n, triangle, numFactors)
    // c <- fmt.Sprintf("∆ %v: %v has %v factors\n", n, triangle, numFactors)
    c <- []int{n, triangle, numFactors}
	// }
}

func main() {
  c := make(chan []int)

	do := true
  // 12375th triangle number: 76576500, has over 500 factors
	for i := 0; do; i++ {
		go printTriangle(i, c)
    result := <- c
    if result[2] >= 500 {
      do = false
      fmt.Printf("∆ %v: %v has %v factors\n", result[0], result[1], result[2])
    }
	}
}
