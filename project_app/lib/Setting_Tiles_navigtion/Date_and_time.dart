import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date and time'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Disk and Network usage',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Strage Usage'),
                  trailing: Text('123.4MB'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOV4hxCkrPtGWNjIZ7aHCSPM1H2JjU4sItcQ&usqp=CAU'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Data Usage'),
                  trailing: Text('13.4MB'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpBi7iZzot3uVh6xZVC1y016zt-1BY-NFu3g&usqp=CAU'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Automatic media download',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('When using mobile data'),
                  subtitle: Text('Photo,videos,(15 MB),'),
                  trailing: Icon(Icons.offline_pin),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('When connected to Wi-Fi'),
                  subtitle: Text('Photo,videos,(15 MB),'),
                  trailing: Icon(Icons.offline_pin),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('When roaming'),
                  subtitle: Text('Photo,'),
                  trailing: Icon(Icons.check_box),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Reset Auto Download Settng',
                style: TextStyle(color: Colors.red),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Private chat'),
                  subtitle: Text('Off'),
                  trailing: Icon(Icons.privacy_tip),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text(' Groups'),
                  subtitle: Text('Off'),
                  trailing: Icon(Icons.privacy_tip),
                ),
              ),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text('Channels'),
                  subtitle: Text('Off'),
                  trailing: Icon(Icons.privacy_tip),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
