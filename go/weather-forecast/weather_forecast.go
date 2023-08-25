// Package weather implements simple forecast function.
package weather

// CurrentCondition used.
var CurrentCondition string

// CurrentLocation used.
var CurrentLocation string

// Forecast : forcast weather.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
