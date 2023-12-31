// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package acronym should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package acronym

import "strings"

// Abbreviate should have a comment documenting it.
func Abbreviate(s string) string {
	// Write some code here to pass the test suite.
	// Then remove all the stock comments.
	// They're here to help you get started but they only clutter a finished solution.
	// If you leave them in, reviewers may protest!
	// remove all delimiters
	s = strings.ReplaceAll(s, "_", " ")
	splitString := strings.Split(s, " ")
	// get first character of each word
	var acronym string
	for _, word := range splitString {
		splitStringPlus := strings.Split(word, "-")
		if len(splitStringPlus) > 0 {
			for _, wordPlus := range splitStringPlus {
				if len(wordPlus) > 0 {
					acronym += string(wordPlus[0])
				}
			}
		}
	}
	// convert to uppercase
	acronym = strings.ToUpper(acronym)
	return acronym
}
