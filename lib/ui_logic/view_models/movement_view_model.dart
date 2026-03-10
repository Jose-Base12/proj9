import 'package:flutter/material.dart';
import 'package:proj9/business_logic/domain_models/movement_domain_model.dart';
import 'package:proj9/business_logic/repository/movement_repository.dart';

class MovementViewModel extends ChangeNotifier {
  final MovementRepository _movementRepository;
  MovementViewModel({required MovementRepository movementRepository})
    : _movementRepository = movementRepository;

  List<MovementDomainModel> get movementDomainModelsList {
    return _movementRepository.fetchMovementDomainModels();
  }
}
