import 'package:flutter/material.dart';
import 'package:proj9/business_logic/repository/exercise_repository.dart';
import 'package:proj9/business_logic/services/exercise_services.dart';
import 'package:proj9/ui_logic/view_models/exercise_view_model.dart';
import 'package:provider/provider.dart';
import 'ui_logic/views/home_screen.dart';

void main() {
  final ExerciseServices exerciseServices = ExerciseServices();
  final ExerciseRepository exerciseRepository = ExerciseRepository(
    exercise: exerciseServices,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              ExerciseViewModel(exerciseRepository: exerciseRepository),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
