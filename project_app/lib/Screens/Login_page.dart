import 'package:flutter/material.dart';

import 'otp_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController country = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 75,
                    child: ClipOval(child: Image.asset('assets/splash.png')),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: TextFormField(
                          cursorHeight: 30,
                          controller: country,
                          // validator: (val) {
                          //   if (val!.isEmpty) {
                          //     return "Please choose a country";
                          //   } else if (val.length < 5) {
                          //     return "country should be full name";
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'Choose a country',
                            labelText: 'Country',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          cursorHeight: 30,
                          controller: phone,
                          // validator: (val) {
                          //   if (val!.isEmpty) {
                          //     return "Please enter your phone number";
                          //   } else if (val.length < 11) {
                          //     return "Number should be complete";
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: 'Enter phone number',
                            labelText: 'Phone',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              FloatingActionButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OtpPage()),
                    );
                  }
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
