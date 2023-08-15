import 'package:flutter/material.dart';

class PeopleNearby extends StatefulWidget {
  const PeopleNearby({super.key});

  @override
  State<PeopleNearby> createState() => _PeopleNearbyState();
}

class _PeopleNearbyState extends State<PeopleNearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 168, 64),
      appBar: AppBar(
        title: const Text('People Near By'),
      ),
    );
  }
}
