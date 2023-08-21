import 'package:flutter/material.dart';
import 'package:project_app/Screens/Login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: mycontroller,
                  children: [
                    SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 25),
                            Image.asset('assets/telne3.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.3),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: const Text(
                                  "Welcome to Telegram! 🎉 Discover a secure and fast way to chat and share with friends. Enjoy your time here!",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),

                    // Page 2 content
                    SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/telne4.jpg',
                              height: MediaQuery.of(context).size.height * 0.3,
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const Center(
                                child: Text(
                                  'Unlike traditional messaging apps that store conversations on individual devices, Telegram stores messages, media, and other data in the cloud. This enables users to access their conversations from multiple devices seamlessly.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),

                    // Page 3 content
                    SizedBox(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/telne5.webp',
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.7,
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const Text(
                                'Unlike traditional messaging apps that store conversations on individual devices, Telegram stores messages, media, and other data in the cloud. This enables users to access their conversations from multiple devices seamlessly.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SmoothPageIndicator(
                controller: mycontroller,
                count: 3,
                effect: const WormEffect(activeDotColor: Colors.blue),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (index < 2) {
                    mycontroller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                    setState(() {
                      index++;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()),
                    );
                  }
                },
                child: Text(index < 2 ? 'Next' : 'Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
