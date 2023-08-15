import 'package:flutter/material.dart';

import '../Classes/chatclass.dart';

class Mainfloat extends StatelessWidget {
  const Mainfloat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New MessAges'),
        elevation: 10,
      ),
      body: Column(
        children: [
          const ListTile(
            title: Text('New Group'),
            leading: Icon(Icons.group),
          ),
          const ListTile(
            title: Text('New Secret chat'),
            leading: Icon(Icons.lock),
          ),
          const ListTile(
            title: Text('New channel'),
            leading: Icon(Icons.wifi_channel_sharp),
          ),
          Container(
            height: 23,
            width: double.infinity,
            color: Colors.grey[300],
            child: Center(
                child: Text(
              'Sorted by last seen time',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold),
            )),
          ),
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
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.wifi_channel_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
