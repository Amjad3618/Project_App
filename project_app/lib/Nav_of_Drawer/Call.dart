import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
        elevation: 10,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.video_call),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
          const Center(
            child: Text(
              'No recent calls',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Your recent voice nd video call\n Will appear here',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CallFloatingButton()));
        },
        child: const Icon(Icons.call),
      ),
    );
  }
}

class CallFloatingButton extends StatefulWidget {
  const CallFloatingButton({super.key});

  @override
  State<CallFloatingButton> createState() => _CallFloatingButtonState();
}

class _CallFloatingButtonState extends State<CallFloatingButton> {
  List Names = [
    '03043422654',
    '03043422254',
    '03043422652',
    '03043422698',
    '03043422628',
    '03043422687',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Contact'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: Names.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                        title: Text(Names[index].toString()),
                        trailing: const Icon(
                          Icons.call,
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
