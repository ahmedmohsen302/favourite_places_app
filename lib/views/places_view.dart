import 'package:favourite_places_app/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesView extends StatelessWidget {
  const PlacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Places',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 28,
          ),
        ),
      ),
      body: PlacesList(places: []),
    );
  }
}
