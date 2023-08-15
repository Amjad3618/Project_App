import 'package:flutter/material.dart';

class ChatFolderTile extends StatefulWidget {
  const ChatFolderTile({super.key});

  @override
  State<ChatFolderTile> createState() => _ChatFolderTileState();
}

class _ChatFolderTileState extends State<ChatFolderTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Folde'),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
