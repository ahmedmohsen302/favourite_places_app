import 'package:favourite_places_app/models/places_model.dart';
import 'package:flutter/material.dart';

class PlaceDetailsView extends StatelessWidget {
  const PlaceDetailsView({super.key, required this.place});
  final PlacesModel place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.title)),
      body: Center(
        child: Text(
          place.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
