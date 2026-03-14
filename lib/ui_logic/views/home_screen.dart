import 'package:flutter/material.dart';
import 'package:proj9/ui_logic/view_models/exercise_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Consumer<ExerciseViewModel>(
        builder: (context, exerciseViewModel, child) {
          return ListView.builder(
            itemCount: exerciseViewModel.exerciseDomainModelsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  exerciseViewModel.exerciseDomainModelsList[index].name,
                ),
                subtitle: Text(
                  exerciseViewModel.exerciseDomainModelsList[index].shortName,
                ),
                leading: CircleAvatar(
                  child: Image.asset(
                    'assets/images/check_mark.jpg',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
