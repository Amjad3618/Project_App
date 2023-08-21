import 'package:flutter/material.dart';

class DeviceTile extends StatefulWidget {
  const DeviceTile({super.key});

  @override
  State<DeviceTile> createState() => _DeviceTileState();
}

class _DeviceTileState extends State<DeviceTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Devices'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/Computer.jpg')),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.5,
                  child: const Text(
                      'Link telegrm Sesktop or telegram web by Scanning QR code'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(229, 207, 140, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {}, child: const Icon(Icons.qr_code)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('Oppo 37'),
                  subtitle: Text('Telegram ndroid 9.7.0'),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6yjMHcZGqhGAM1_1_a4yFLWH2SSpTL3pSgw&usqp=CAU',
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: Card(
                    color: Colors.grey[200],
                    child: const ListTile(
                      title: Center(
                        child: Text(
                          'Terminte All Other Sessions',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: Icon(Icons.handshake_outlined),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                width: double.infinity,
                color: const Color.fromARGB(255, 44, 43, 43),
                child: const Center(
                    child: Text(
                  'Logs out All devixes expect for this one',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Active sessions',
                style: TextStyle(color: Colors.blue),
              ),
              Card(
                elevation: 5,
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('7576865'),
                  subtitle: Text('Telegram Desktop 987.9'),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6yjMHcZGqhGAM1_1_a4yFLWH2SSpTL3pSgw&usqp=CAU',
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('Pc 64bit'),
                  subtitle: Text('Telegram ndroid 9.7.0'),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeYu4wAOXHp0muiyQYj0y-7gXRg-aFBBXsnA&usqp=CAU',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                color: Colors.grey[200],
                child: const ListTile(
                  title: Text('78266456'),
                  subtitle: Text('Telegram ndroid 99.s0'),
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6yjMHcZGqhGAM1_1_a4yFLWH2SSpTL3pSgw&usqp=CAU',
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
