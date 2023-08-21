import 'package:flutter/material.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy and Security'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Security',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Two_ step verification'),
                    trailing: Text(
                      'on',
                      style: TextStyle(color: Colors.blue),
                    ),
                    leading: Icon(Icons.key),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Auto_Delete Messages'),
                    trailing: Text(
                      'off',
                      style: TextStyle(color: Colors.blue),
                    ),
                    leading: Icon(Icons.auto_delete),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Password_Lock'),
                    trailing: Text(
                      'off',
                      style: TextStyle(color: Colors.blue),
                    ),
                    leading: Icon(Icons.lock),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Blocked Users'),
                    trailing: Text(
                      '1',
                      style: TextStyle(color: Colors.blue),
                    ),
                    leading: Icon(Icons.block),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Devices'),
                    trailing: Text(
                      '4',
                      style: TextStyle(color: Colors.blue),
                    ),
                    leading: Icon(Icons.computer),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text(
                        'Revie the list of devices whereyou are logged into your Talegram account'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Privacy',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Phone Number '),
                    trailing: Text('My Contact',
                        style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Last Seen & Online'),
                    trailing:
                        Text('Everybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Profile Photos'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Bio'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Forwarded Messages'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Calls'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Group & Channels'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('voice & Messages'),
                    trailing:
                        Text('Eveybody', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Bots and ebsites',
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Clear Payment and Shipping Info'),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Logged In ith telegram'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Center(
                      child:
                          Text('websites where your used Telegram to log in')),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Contcacts',
                  style: TextStyle(color: Colors.blue),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Delete Synced Contcats'),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Sync Contacts'),
                    trailing: Icon(Icons.offline_pin_outlined),
                  ),
                ),
                const Card(
                  color: Color.fromARGB(255, 190, 190, 190),
                  child: ListTile(
                    title: Text('Suggest Frequent Contacts'),
                    trailing: Icon(Icons.offline_pin_outlined),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
