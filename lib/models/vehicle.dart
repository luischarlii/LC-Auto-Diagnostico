
class Vehicle {
  final String make;
  final String model;
  final int year;
  final String engine;
  final String transmission;
  final String fuelType;

  const Vehicle({
    required this.make,
    required this.model,
    required this.year,
    required this.engine,
    required this.transmission,
    required this.fuelType,
  });

  Map<String, dynamic> toJson() {
    return {
      'make': make,
      'model': model,
      'year': year,
      'engine': engine,
      'transmission': transmission,
      'fuelType': fuelType,
    };
  }

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      make: json['make'] ?? '',
      model: json['model'] ?? '',
      year: json['year'] ?? 2004,
      engine: json['engine'] ?? '',
      transmission: json['transmission'] ?? '',
      fuelType: json['fuelType'] ?? 'Gasolina',
    );
  }
}
