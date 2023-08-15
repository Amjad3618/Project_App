import 'package:flutter/material.dart';
import 'package:project_app/Nav_of_Drawer/Call.dart';
import 'package:project_app/Nav_of_Drawer/Contact.dart';
import 'package:project_app/Nav_of_Drawer/Invite_Friends.dart';
import 'package:project_app/Nav_of_Drawer/New_Group.dart';
import 'package:project_app/Nav_of_Drawer/People_Near_by.dart';
import 'package:project_app/Nav_of_Drawer/Saved_Messages.dart';
import 'package:project_app/Nav_of_Drawer/Settings.dart';
import 'package:project_app/Nav_of_Drawer/Talegram_feature.dart';
import 'package:project_app/chats_of_listTiles/chat_screen_tile_nav.dart';
import 'package:project_app/floating_buttons/Main_screen_float.dart';
import '../Classes/chatclass.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({
    super.key,
  });

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  var appdata = data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Talegram'),
        ),
        actions: const [Icon(Icons.search)],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(),
                child: UserAccountsDrawerHeader(
                  accountEmail: const Text('Amjad Ali'),
                  accountName: const Text(
                    'AmjadAli2.0@gmail.com',
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
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
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 10,
                  child: ListTile(
                    title: Text(
                      data[index].title.toString(),
                    ),
                    subtitle: Text(
                      data[index].subtitle.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 27, 13, 228),
                      ),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        data[index].imageurl.toString(),
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    trailing: const Icon(Icons.favorite),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatTile()));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Mainfloat()));
        },
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
