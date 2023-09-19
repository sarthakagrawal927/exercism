/**
 * - Mercury: orbital period 0.2408467 Earth years
- Venus: orbital period 0.61519726 Earth years
- Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
- Mars: orbital period 1.8808158 Earth years
- Jupiter: orbital period 11.862615 Earth years
- Saturn: orbital period 29.447498 Earth years
- Uranus: orbital period 84.016846 Earth years
- Neptune: orbital period 164.79132 Earth years
 */
class SpaceAge {
  double age({required String planet, required int seconds}) {
    double planetEarthAge = seconds / 31557600;
    switch (planet) {
      case 'Mercury':
        planetEarthAge /= 0.2408467;
        break;
      case 'Venus':
        planetEarthAge /= 0.61519726;
        break;
      case 'Earth':
        planetEarthAge /= 1.0;
        break;
      case 'Mars':
        planetEarthAge /= 1.8808158;
        break;
      case 'Jupiter':
        planetEarthAge /= 11.862615;
        break;
      case 'Saturn':
        planetEarthAge /= 29.447498;
        break;
      case 'Uranus':
        planetEarthAge /= 84.016846;
        break;
      case 'Neptune':
        planetEarthAge /= 164.79132;
        break;
      default:
        break;
    }
    // return rounded to 2 decimal places
    return double.parse(planetEarthAge.toStringAsFixed(2));
  }
}
