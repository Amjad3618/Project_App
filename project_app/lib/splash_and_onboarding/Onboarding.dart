
import 'package:flutter/material.dart';
import 'package:project_app/Screens/Login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController mycontroller = PageController();
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: mycontroller,
              children: [
                SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset('assets/onb1.jpg'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Welcome to Telegram! 🎉 Discover a secure and fast way to chat and share with friends.  Enjoy your time here!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Next'))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/onb2.png',
                        height: 250,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Unlike traditional messaging apps that store conversations on individual devices, Telegram stores messages, media, and other data in the cloud. This enables users to access their conversations from multiple devices seamlessly.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Next'))
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Onb4.jpg',
                        height: 250,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Unlike traditional messaging apps that store conversations on individual devices, Telegram stores messages, media, and other data in the cloud. This enables users to access their conversations from multiple devices seamlessly.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Loginpage()));
                          },
                          child: const Text('Get Start'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
