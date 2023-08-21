import 'package:flutter/material.dart';
import 'package:project_app/drawer%20_folder/drawer_fille.dart';
import '../Classes/chatclass.dart';
import '../chats_of_listTiles/chat_screen_tile_nav.dart';

import 'package:project_app/floating_buttons/Main_screen_float.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key}) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  var appdata = data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Telegram'),
        ),
        actions: const [Icon(Icons.search)],
      ),
      drawer: const dra(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: appdata.length,
              itemBuilder: (BuildContext context, int index) {
                Chat chat = appdata[index];
                return Card(
                  elevation: 10,
                  child: ListTile(
                    title: Text(
                      chat.title.toString(),
                    ),
                    subtitle: Text(
                      chat.subtitle.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 27, 13, 228),
                      ),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        chat.imageurl.toString(),
                        fit: BoxFit.fill,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    trailing: const Icon(Icons.check),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatTile(chat: chat)));
                    },
                  ),
                );
              },
            ),
          ),
        ]),
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
