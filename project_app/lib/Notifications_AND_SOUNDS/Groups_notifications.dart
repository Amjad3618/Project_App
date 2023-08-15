import 'package:flutter/material.dart';

class GroupsNotifications extends StatefulWidget {
  const GroupsNotifications({super.key});

  @override
  State<GroupsNotifications> createState() => _GroupsNotificationsState();
}

class _GroupsNotificationsState extends State<GroupsNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
    );
  }
}
