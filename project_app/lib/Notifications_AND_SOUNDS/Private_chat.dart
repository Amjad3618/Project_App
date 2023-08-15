import 'package:flutter/material.dart';

class PrivateChat extends StatefulWidget {
  const PrivateChat({super.key});

  @override
  State<PrivateChat> createState() => _PrivateChatState();
}

class _PrivateChatState extends State<PrivateChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
    );
  }
}
