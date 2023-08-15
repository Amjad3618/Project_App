import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InfoScreen(),
    );
  }
}

class Info {
  String? ip;
  String? city;
  String? region;
  String? country;
  String? loc;
  String? org;
  String? postal;
  String? timezone;
  String? readme;

  Info({
    this.ip,
    this.city,
    this.region,
    this.country,
    this.loc,
    this.org,
    this.postal,
    this.timezone,
    this.readme,
  });

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      ip: json['ip'],
      city: json['city'],
      region: json['region'],
      country: json['country'],
      loc: json['loc'],
      org: json['org'],
      postal: json['postal'],
      timezone: json['timezone'],
      readme: json['readme'],
    );
  }
}

class InfoScreen extends StatelessWidget {
  Future<Info> fetchInformation() async {
    final response =
        await http.get(Uri.parse('https://ipinfo.io/161.185.160.93/geo'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Info.fromJson(data);
    } else {
      throw Exception('Failed to load information');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: FutureBuilder<Info>(
        future: fetchInformation(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data available.'));
          } else {
            final info = snapshot.data!;
            return ListView(
              children: [
                ListTile(
                  title: Text('IP: ${info.ip}'),
                  subtitle: Text('City: ${info.city}'),
                ),
                // Add more ListTiles or widgets to display other info as needed.
              ],
            );
          }
        },
      ),
    );
  }
}
