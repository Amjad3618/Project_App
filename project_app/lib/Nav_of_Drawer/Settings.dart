import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Account'),
                  subtitle: Text('+923231324627'),
                  leading: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                elevation: 5,
                child: ListTile(
                  title: Text('None'),
                  subtitle: Text('Usename'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                elevation: 5,
                child: ListTile(
                  title:
                      Text('Mobile Application Developer - flutter Develope'),
                  subtitle: Text('Bio'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Settings',
                style: TextStyle(color: Colors.blue),
              ),
              const Card(
                child: ListTile(
                  title: Text('Chat settings'),
                  leading: Icon(Icons.chat),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Privacy and Security'),
                  leading: Icon(Icons.lock),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text(' Notifictions and sounds'),
                  leading: Icon(Icons.notification_add),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Date and Time'),
                  leading: Icon(Icons.date_range),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Power Saving'),
                  leading: Icon(Icons.battery_0_bar),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Chat Folder'),
                  leading: Icon(Icons.folder),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Devices'),
                  leading: Icon(Icons.device_hub),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Language'),
                  leading: Icon(Icons.language),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text('Talegram premium'),
                    leading: Icon(Icons.star),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              const Text('Help'),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  title: Text('Ask a Question'),
                  leading: Icon(Icons.chat),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Talegram FAQ'),
                  leading: Icon(Icons.question_answer),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text('Privacy policy'),
                  leading: Icon(Icons.check),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
