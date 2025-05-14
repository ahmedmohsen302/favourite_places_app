import 'package:favourite_places_app/constants.dart';
import 'package:favourite_places_app/views/places_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProviderScope(child: const FavouritePlacesApp()));
}

class FavouritePlacesApp extends StatelessWidget {
  const FavouritePlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          centerTitle: true,
          backgroundColor: kColorScheme.onPrimary,
          foregroundColor: kColorScheme.primary,
        ),
        textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
          titleSmall: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
          titleLarge: GoogleFonts.ubuntuCondensed(fontWeight: FontWeight.bold),
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kColorScheme.shadow,
      ),
      home: PlacesView(),
    );
  }
}
