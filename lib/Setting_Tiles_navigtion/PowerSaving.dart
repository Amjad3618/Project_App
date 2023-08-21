import 'package:flutter/material.dart';

class PowerSaving extends StatefulWidget {
  const PowerSaving({super.key});

  @override
  State<PowerSaving> createState() => _PowerSavingState();
}

class _PowerSavingState extends State<PowerSaving> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Power Saving'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Power Saving options'),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('Animated Stickers 0/2'),
                leading: const Icon(Icons.face_2_outlined),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('Animated Emoji'),
                leading: const Icon(Icons.emoji_emotions),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('Animation in calls'),
                leading: const Icon(Icons.chat),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('AutoPlay videos'),
                leading: const Icon(Icons.call),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('AutoPlay Gifts'),
                leading: const Icon(Icons.video_call),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              color: Colors.grey[300],
              child: ListTile(
                title: const Text('Animated Stickers 0/2'),
                leading: const Icon(Icons.gif_box),
                trailing: const Icon(Icons.open_in_browser),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
