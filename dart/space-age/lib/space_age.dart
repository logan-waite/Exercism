class SpaceAge {
  final _earthYearInSeconds = 31557600;
  final Map<String, double> _planetRotations = {
    "Mercury" : 0.2408467,
    "Venus" : 0.61519726,
    "Earth" : 1.0,
    "Mars" : 1.8808158,
    "Jupiter" : 11.862615,
    "Saturn" : 29.447498,
    "Uranus" : 84.016846,
    "Neptune" : 164.79132
  };

  double age({String planet: "Earth", int seconds: 31557600}) {
      return _calculatePlanetYear(_convertSecondsToEarthYears(seconds), _planetRotations[planet]);
  }

  double _calculatePlanetYear(double earthYears, double offset) {
    return double.parse((earthYears / offset).toStringAsFixed(2));
  }

  double _convertSecondsToEarthYears(int seconds) {
    return seconds / _earthYearInSeconds;
  }
}
