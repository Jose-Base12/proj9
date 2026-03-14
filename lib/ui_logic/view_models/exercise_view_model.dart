import 'package:flutter/material.dart';
import 'package:proj9/business_logic/domain_models/exercise_domain_model.dart';
import 'package:proj9/business_logic/repository/exercise_repository.dart';

class ExerciseViewModel extends ChangeNotifier {
  final ExerciseRepository _exerciseRepository;
  ExerciseViewModel({required ExerciseRepository exerciseRepository})
    : _exerciseRepository = exerciseRepository;

  List<ExerciseDomainModel> get exerciseDomainModelsList {
    return _exerciseRepository.fetchExerciseDomainModels();
  }
}
