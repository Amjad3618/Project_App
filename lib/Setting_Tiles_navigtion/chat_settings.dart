import 'package:flutter/material.dart';

class ChatSetting extends StatefulWidget {
  const ChatSetting({super.key});

  @override
  State<ChatSetting> createState() => _ChatSettingState();
}

class _ChatSettingState extends State<ChatSetting> {
  bool _autoNightMode = false;
  bool one = false;
  bool two = false;
  bool three = true;
  bool four = false;
  bool five = true;
  bool six = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('Auto - night mode'),
                  leading: const Icon(Icons.nightlight_round),
                  trailing: Switch(
                    value: _autoNightMode,
                    onChanged: (newValue) {
                      setState(() {
                        _autoNightMode = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('Animations'),
                  leading: Icon(Icons.animation),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('Stickers and Emoji'),
                  leading: Icon(Icons.emoji_emotions),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Media and Sound',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('Stickers and Emoji'),
                  trailing: Switch(
                      value: one,
                      onChanged: (newValue) {
                        setState(() {
                          one = newValue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('Raise to Listen'),
                  trailing: Switch(
                      value: two,
                      onChanged: (newValue) {
                        setState(() {
                          two = newValue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('Saise to Speak'),
                  trailing: Switch(
                      value: three,
                      onChanged: (newValue) {
                        setState(() {
                          three = newValue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('pause music while recording'),
                  trailing: Switch(
                      value: four,
                      onChanged: (newValue) {
                        setState(() {
                          four = newValue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Other setings',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('In-App Browser'),
                  trailing: Switch(
                      value: five,
                      onChanged: (newValue) {
                        setState(() {
                          five = newValue;
                        });
                      }),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Card(
                color: Colors.grey[200],
                child: ListTile(
                  title: const Text('Direct Share'),
                  trailing: Switch(
                      value: six,
                      onChanged: (newValue) {
                        setState(() {
                          six = newValue;
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
