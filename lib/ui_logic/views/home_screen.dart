import 'package:flutter/material.dart';
import 'package:proj9/ui_logic/view_models/movement_view_model.dart';
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
      body: Consumer<MovementViewModel>(
        builder: (context, movementViewModel, child) {
          return ListView.builder(
            itemCount: movementViewModel.movementDomainModelsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  movementViewModel.movementDomainModelsList[index].name,
                ),
                subtitle: Text(
                  movementViewModel.movementDomainModelsList[index].shortName,
                ),
                leading: CircleAvatar(
                  // Image displayed using asset instead of imageURL because
                  // imageURL is broken
                  child: Image.asset(
                    'assets/images/tonal_logo.png',
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
