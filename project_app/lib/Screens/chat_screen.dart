import 'package:flutter/material.dart';

import 'package:project_app/chats_of_listTiles/chat_screen_tile_nav.dart';
import 'package:project_app/floating_buttons/Main_screen_float.dart';
import '../Classes/chatclass.dart';
import '../drawer _folder/drawer_fille.dart';

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
          child: Text('Telegram'),
        ),
        actions: const [Icon(Icons.search)],
      ),
      drawer: const dra(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                      trailing: const Icon(Icons.check),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatTile()));
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
