import 'package:flutter/material.dart';
import 'package:proj9/business_logic/repository/movement_repository.dart';
import 'package:proj9/business_logic/services/movement_services.dart';
import 'package:proj9/ui_logic/view_models/movement_view_model.dart';
import 'package:provider/provider.dart';
import 'ui_logic/views/home_screen.dart';

void main() {
  final MovementServices movementServices = MovementServices();
  final MovementRepository movementRepository = MovementRepository(
    movementServices: movementServices,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              MovementViewModel(movementRepository: movementRepository),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
