import 'package:proj9/business_logic/domain_models/exercise_domain_model.dart';

class ExerciseServices {
  final exerciseRawJson = [
    {
      "id": "246ebe73-53be-4ff8-8cbb-3b3a355ed828",
      "shortName": "Bench Press",
      "name": "Bench Press",
    },
    {
      "id": "cc4250c0-c5da-463f-8441-517a47914665",
      "shortName": "Racked Offset Squat",
      "name": "Racked Offset Squat",
    },
    {
      "id": "022750dd-f732-4cfb-b68e-ccbb5df495f0",
      "shortName": "Biceps Curl",
      "name": "Barbell Biceps Curl",
    },
  ];

  List<ExerciseDomainModel> fetchExerciseRawJson() {
    return exerciseRawJson
        .map((json) => ExerciseDomainModel.fromJson(json))
        .toList();
    ;
  }
}
