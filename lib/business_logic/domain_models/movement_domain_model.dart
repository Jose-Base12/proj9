

class MovementDomainModel {
  final String id;
  final String shortName;
  final String name;
  final String imageUrl;

  MovementDomainModel({
    required this.id,
    required this.shortName,
    required this.name,
    required this.imageUrl,
  });

  factory MovementDomainModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': String id,
        'shortName': String shortName,
        'name': String name,
        'imageUrl': String imageUrl,
      } =>
        MovementDomainModel(
          id: id,
          shortName: shortName,
          name: name,
          imageUrl: imageUrl,
        ),
      _ => throw FormatException(),
    };
  }
}
