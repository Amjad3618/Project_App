import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PeopleNearby extends StatefulWidget {
  const PeopleNearby({Key? key}) : super(key: key);

  @override
  State<PeopleNearby> createState() => _PeopleNearbyState();
}

class _PeopleNearbyState extends State<PeopleNearby> {
  List<ApiUsers> albums = [];

  Future<List<ApiUsers>> fetchData() async {
    const uri = 'https://jsonplaceholder.typicode.com/photos';
    final response = await http.get(Uri.parse(uri));
    // log(response.statusCode.toString());
    //log(response.body.toString());

    if (response.statusCode == 200) {
      List<dynamic> json = jsonDecode(response.body.toString());
      for (Map<String, dynamic> i in json) {
        albums.add(ApiUsers.fromJson(i));
      }
      return albums;
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Api '),
        ),
        body: FutureBuilder<List<ApiUsers>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              return SizedBox(
                child: Card(
                  elevation: 10,
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          snapshot.data![index].title.toString(),
                          maxLines: 1,
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              snapshot.data![index].thumbnailUrl.toString()),
                        ),
                        subtitle: Text(snapshot.data![index].id.toString()),
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return const Center(child: Text('No data found'));
            }
          },
        ),
      ),
    );
  }
}

class ApiUsers {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  ApiUsers({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  ApiUsers.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['albumId'] = albumId;
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['thumbnailUrl'] = thumbnailUrl;
    return data;
  }
}
