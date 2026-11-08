class PlanetModel {
  final String name;
  final String title;
  final String description;
  final String imagePath;
  final String modelPath;
  final String distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final String radius;
  final String mass;
  final double gravity;
  final String surfaceArea;

  const PlanetModel({
    required this.name,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.modelPath,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea
  });
}
