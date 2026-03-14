import '../domain_models/exercise_domain_model.dart';
import '../services/exercise_services.dart';

class ExerciseRepository {
  final ExerciseServices _exercise;
  ExerciseRepository({required ExerciseServices exercise})
    : _exercise = exercise;

  List<ExerciseDomainModel> fetchExerciseDomainModels() {
    return _exercise.fetchExerciseRawJson();
  }
}
