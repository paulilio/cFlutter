import 'package:flutter/material.dart';
import 'package:great_places/screens/places_form_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:great_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grat Places',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      ),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}
