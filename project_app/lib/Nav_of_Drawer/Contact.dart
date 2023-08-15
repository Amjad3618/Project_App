import 'package:flutter/material.dart';
import 'package:project_app/Classes/chatclass.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Column(
        children: [
          const ListTile(
            title: Text('Invite Friends'),
            leading: Icon(Icons.inventory_outlined),
          ),
          const ListTile(
            title: Text('Find People Nearby'),
            leading: Icon(Icons.location_city_sharp),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey[100],
            height: 25,
            width: double.infinity,
            child: const Center(
                child: Text(
              'Sorted  by last seen time',
              style: TextStyle(color: Colors.grey),
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
        child: const Icon(Icons.group_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
