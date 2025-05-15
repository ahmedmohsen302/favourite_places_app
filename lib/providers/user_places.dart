import 'dart:io';

import 'package:favourite_places_app/models/places_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<PlacesModel>> {
  UserPlacesNotifier() : super([]);

  void addPlace(String title, File image) {
    final newPlace = PlacesModel(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<PlacesModel>>(
      (ref) => UserPlacesNotifier(),
    );
