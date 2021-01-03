enum Transmission {
  Manual,
  Automatic,
}

enum Drive {
  FWD,
  RWD,
  AWD,
}

enum Fuel {
  Petrol,
  Diesel,
  Electric,
  Hybrid,
}

class Car {
  final String id;
  final List<String> categoryIds;
  final String modelName;
  final String modelCode;
  final String imageUrl;
  final List<String> parameters;
  final int horsePower;
  final int nm;
  final Transmission transmission;
  final Drive drive;
  final Fuel fuel;

  const Car({
    this.id,
    this.categoryIds,
    this.modelName,
    this.modelCode,
    this.imageUrl,
    this.parameters,
    this.horsePower,
    this.nm,
    this.transmission,
    this.drive,
    this.fuel,
  });
}
