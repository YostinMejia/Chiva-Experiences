import 'package:chiva_experiences/features/home/domain/place.dart';
import 'package:chiva_experiences/features/home/routes/place_details.dart';
import 'package:chiva_experiences/features/home/widgets/place_card.dart';
import 'package:flutter/material.dart';

class HomeInitial extends StatelessWidget {
  final List<Place> places;
  const HomeInitial({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 0.8,
      mainAxisSpacing: 0.8,

      children:
          places.map((place) {
            return PlaceCard(place: place, onTap: navigateToPlace);
          }).toList(),
    );
  }
}

void navigateToPlace(BuildContext context, Place place) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PlaceDetails(place: place)),
  );
}
