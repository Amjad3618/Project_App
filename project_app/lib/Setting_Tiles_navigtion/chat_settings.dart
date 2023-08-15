import 'package:flutter/material.dart';

class ChatSetting extends StatefulWidget {
  const ChatSetting({super.key});

  @override
  State<ChatSetting> createState() => _ChatSettingState();
}

class _ChatSettingState extends State<ChatSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Settings'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
