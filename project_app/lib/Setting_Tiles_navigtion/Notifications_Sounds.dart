import 'package:flutter/material.dart';

import 'package:project_app/Notifications_AND_SOUNDS/Channels.dart';
import 'package:project_app/Notifications_AND_SOUNDS/Private_chat.dart';
import 'package:project_app/Notifications_AND_SOUNDS/Stories.dart';

import '../Notifications_AND_SOUNDS/Groups_notifications.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications and sound'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Notifictions for chats',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivateChat()));
                  },
                  title: const Text('Private chats'),
                  subtitle: const Text('Tap to change'),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GroupsNotifications()));
                  },
                  title: const Text('Group'),
                  subtitle: const Text('Tap to change'),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Channels()));
                  },
                  title: const Text('Channels'),
                  subtitle: const Text('Tp to change'),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Stories()));
                  },
                  title: const Text(' Stries'),
                  subtitle: const Text('OFF 5 automatic exceptions'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                width: double.infinity,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Calls',
                style: TextStyle(color: Colors.blue),
              ),
              const Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Vibrate'),
                  trailing: Text(
                    'Default',
                    style: TextStyle(color: Color.fromARGB(255, 11, 239, 255)),
                  ),
                ),
              ),
              const Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Ringtone'),
                  trailing: Text(
                    'ringtone_0001',
                    style: TextStyle(color: Color.fromARGB(255, 11, 239, 255)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
