import 'package:favourite_places_app/models/places_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<PlacesModel>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title) {
    final newPlace = PlacesModel(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<PlacesModel>>(
      (ref) => UserPlacesNotifier(),
    );
