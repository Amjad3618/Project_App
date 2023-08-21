import 'package:flutter/material.dart';
import 'package:project_app/Setting_Tiles_navigtion/Chat_folder.dart';

import 'package:project_app/Setting_Tiles_navigtion/Date_and_time.dart';
import 'package:project_app/Setting_Tiles_navigtion/Devices.dart';
import 'package:project_app/Setting_Tiles_navigtion/Language.dart';
import 'package:project_app/Setting_Tiles_navigtion/Notifications_Sounds.dart';
import 'package:project_app/Setting_Tiles_navigtion/Privacy_security.dart';
import 'package:project_app/Setting_Tiles_navigtion/chat_settings.dart';

import '../Setting_Tiles_navigtion/PowerSaving.dart';

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
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.qr_code))),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  title: const Text('Account'),
                  subtitle: const Text('+923231324627'),
                  leading: const Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  title: const Text('None'),
                  subtitle: const Text('Usename'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  title: const Text(
                      'Mobile Application Developer - flutter Develope'),
                  subtitle: const Text('Bio'),
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
              ///////////////////////////////////////////////////////////////////////
              Card(
                child: ListTile(
                  title: const Text('Chat settings'),
                  leading: const Icon(Icons.chat),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatSetting()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Privacy and Security'),
                  leading: const Icon(Icons.lock),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacySecurity()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text(' Notifictions and sounds'),
                  leading: const Icon(Icons.notification_add),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notifications()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Date and Time'),
                  leading: const Icon(Icons.date_range),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DateAndTime()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Power Saving'),
                  leading: const Icon(Icons.battery_0_bar),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PowerSaving()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatFolderTile()));
                  },
                  title: const Text('Chat Folder'),
                  leading: const Icon(Icons.folder),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DeviceTile()));
                  },
                  title: const Text('Devices'),
                  leading: const Icon(Icons.device_hub),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LanguageTile()));
                  },
                  title: const Text('Language'),
                  leading: const Icon(Icons.language),
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
