import '../domain_models/movement_domain_model.dart';
import '../services/movement_services.dart';

class MovementRepository {
  final MovementServices _movementServices;
  MovementRepository({required MovementServices movementServices})
    : _movementServices = movementServices;

  List<MovementDomainModel> fetchMovementDomainModels() {
    return _movementServices.fetchMovementRawJson();
  }
}
