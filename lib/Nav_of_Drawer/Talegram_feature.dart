import 'package:flutter/material.dart';

class TalegramFeature extends StatefulWidget {
  const TalegramFeature({super.key});

  @override
  State<TalegramFeature> createState() => _TalegramFeatureState();
}

class _TalegramFeatureState extends State<TalegramFeature> {
  List telegrmFeatures = [
    'Customize Your Profile: Personalize your Telegram profile with a unique picture and username. Go to Settings > Edit Profile to make yourself easily identifiable to your contacts.',
    ' Chats: For extra privacy, use Telegram Secret Chats feature. These chats are end-to-end encrypted and can be set to self-destruct after a certain time..',
    'Pin Important Chats: Keep essential conversations at the top of your chat list by pinning them. Long-press the chat and select "Pin" to access it quickly.',
    'Group Chat Admins: Manage group chats efficiently by appointing admins to help you with moderation and setting the right tone.',
    'Mute Notifications: If a group chat becomes too noisy, mute it for a specified period. Open the chat, tap the three dots, and choose "Mute Notifications."',
    'Telegram Bots: Explore Telegram bots to perform various tasks and get useful information right within the app. Look for bots by name or use the BotFather to discover new ones.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Talegram Tips'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Colors.grey[300]),
                        child: Center(
                            child: Text(telegrmFeatures[index].toString())),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
