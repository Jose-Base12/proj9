class ExerciseDomainModel {
  final String id;
  final String shortName;
  final String name;

  ExerciseDomainModel({
    required this.id,
    required this.shortName,
    required this.name,
  });

  factory ExerciseDomainModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': String id,
        'shortName': String shortName,
        'name': String name,
      } =>
        ExerciseDomainModel(
          id: id,
          shortName: shortName,
          name: name,
        ),
      _ => throw FormatException(),
    };
  }
}
