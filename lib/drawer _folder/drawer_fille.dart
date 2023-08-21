import 'package:flutter/material.dart';
import 'package:project_app/Nav_of_Drawer/Saved_Messages.dart';

import '../Nav_of_Drawer/Call.dart';
import '../Nav_of_Drawer/Contact.dart';
import '../Nav_of_Drawer/Invite_Friends.dart';
import '../Nav_of_Drawer/New_Group.dart';
import '../Nav_of_Drawer/People_Near_by.dart';
import '../Nav_of_Drawer/Settings.dart';
import '../Nav_of_Drawer/Talegram_feature.dart';

class dra extends StatefulWidget {
  const dra({super.key});

  @override
  State<dra> createState() => _draState();
}

class _draState extends State<dra> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: const Text('+3043422654'),
              accountName: const Text(
                'Amjad Ali',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              currentAccountPicture: ClipOval(
                child: CircleAvatar(
                  radius: 100,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT-jSAq8-DwPpexd5h1c0Gv-tzFJBhmkmjOQ&usqp=CAU',
                    height: 100,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('New Group'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Group()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Contact'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Contact()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Calls'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Call()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('People Nearby'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PeopleNearby()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Saved Messages'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SavedMassages()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: const Text('Invite Friends'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InviteFriend()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_outlined),
              title: const Text('Talegram Features'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TalegramFeature()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
