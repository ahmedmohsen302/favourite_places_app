import 'package:favourite_places_app/models/places_model.dart';
import 'package:favourite_places_app/views/place_details_view.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});
  final List<PlacesModel> places;

  @override
  Widget build(BuildContext context) {
    return places.isNotEmpty
        ? ListView.builder(
          itemCount: places.length,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(places[index].image),
                    radius: 26,
                  ),
                  title: Text(
                    places[index].title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 24,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) => PlaceDetailsView(place: places[index]),
                      ),
                    );
                  },
                ),
              ),
        )
        : Center(
          child: Text(
            'There is no places yet...',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 26,
            ),
          ),
        );
  }
}
