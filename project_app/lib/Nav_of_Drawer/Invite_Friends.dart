import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InviteFriend extends StatefulWidget {
  const InviteFriend({super.key});
  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invite Friend'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Search contacts'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share Talegram...'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, index) {
                  return const Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text('Demos Of Talegram'),
                      leading: CircleAvatar(child: Icon(Icons.abc)),
                    ),
                  );
                }),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: const Color.fromARGB(255, 56, 212, 61),
            child: const Center(
                child: Text(
              'Select contact to Invite them to Talegram',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
