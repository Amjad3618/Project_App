import 'package:flutter/material.dart';

class SavedMassages extends StatefulWidget {
  const SavedMassages({super.key});

  @override
  State<SavedMassages> createState() => _SavedMassagesState();
}

class _SavedMassagesState extends State<SavedMassages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Massages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.send),
                  labelText: 'Messages',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            )
          ],
        ),
      ),
    );
  }
}
