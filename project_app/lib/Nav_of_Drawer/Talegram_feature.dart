import 'package:flutter/material.dart';

class TalegramFeature extends StatefulWidget {
  const TalegramFeature({super.key});

  @override
  State<TalegramFeature> createState() => _TalegramFeatureState();
}

class _TalegramFeatureState extends State<TalegramFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Talegram Tips'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      'Customize Your Profile: Personalize your Telegram profile with a unique picture and username. Go to Settings > Edit Profile to make yourself easily identifiable to your contacts.',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      ' Chats: For extra privacy, use Telegram Secret Chats feature. These chats are end-to-end encrypted and can be set to self-destruct after a certain time..',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      'Pin Important Chats: Keep essential conversations at the top of your chat list by pinning them. Long-press the chat and select "Pin" to access it quickly.',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      'Group Chat Admins: Manage group chats efficiently by appointing admins to help you with moderation and setting the right tone.',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      'Mute Notifications: If a group chat becomes too noisy, mute it for a specified period. Open the chat, tap the three dots, and choose "Mute Notifications."',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 400,
                    color: Colors.grey,
                    child: const Text(
                      'Telegram Bots: Explore Telegram bots to perform various tasks and get useful information right within the app. Look for bots by name or use the BotFather to discover new ones.',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.black,
                  child:
                      TextButton(onPressed: () {}, child: const Text('Mute')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
