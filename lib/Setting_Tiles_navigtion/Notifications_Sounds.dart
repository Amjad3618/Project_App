import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool one1 = true;
  bool two2 = false;
  bool three3 = true;
  bool four4 = false;
  bool five5 = true;
  bool six6 = false;
  bool seven7 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications and sound'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Notifictions for chats',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const PrivateChat()));
                  // },
                  title: const Text('Private chats'),
                  subtitle: const Text('Tap to change'),
                  trailing: Switch(
                    value: one1,
                    onChanged: (newValue) {
                      setState(() {
                        one1 = newValue;
                      });
                    },
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const GroupsNotifications()));
                  // },
                  title: const Text('Group'),
                  subtitle: const Text('Tap to change'),
                  trailing: Switch(
                    value: two2,
                    onChanged: (newValue) {
                      setState(() {
                        two2 = newValue;
                      });
                    },
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const Channels()));
                  // },
                  title: const Text('Channels'),
                  subtitle: const Text('Tp to change'),
                  trailing: Switch(
                    value: three3,
                    onChanged: (newValue) {
                      setState(() {
                        three3 = newValue;
                      });
                    },
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const Stories()));
                  // },
                  title: const Text(' Stries'),
                  subtitle: const Text('OFF 5 automatic exceptions'),
                  trailing: Switch(
                    value: four4,
                    onChanged: (newValue) {
                      setState(() {
                        four4 = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 15,
                width: double.infinity,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Calls',
                style: TextStyle(color: Colors.blue),
              ),
              const Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Vibrate'),
                  trailing: Text(
                    'Default',
                    style: TextStyle(color: Color.fromARGB(255, 11, 239, 255)),
                  ),
                ),
              ),
              const Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Ringtone'),
                  trailing: Text(
                    'ringtone_0001',
                    style: TextStyle(color: Color.fromARGB(255, 11, 239, 255)),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Badge counter',
                style: TextStyle(color: Colors.blue),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: const Text(' Show Badge Icon'),
                  trailing: Switch(
                    value: five5,
                    onChanged: (newValue) {
                      setState(() {
                        five5 = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: const Text(' Include Muted Chat'),
                  trailing: Switch(
                    value: six6,
                    onChanged: (newValue) {
                      setState(() {
                        six6 = newValue;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: const Text(' Show Badge Icon'),
                  trailing: Switch(
                    value: seven7,
                    onChanged: (newValue) {
                      setState(() {
                        seven7 = newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
