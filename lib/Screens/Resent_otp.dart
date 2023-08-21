import 'package:flutter/material.dart';
import 'package:project_app/Screens/otp_page.dart';

class Resentotp extends StatefulWidget {
  const Resentotp({Key? key}) : super(key: key);

  @override
  State<Resentotp> createState() => _ResentotpState();
}

class _ResentotpState extends State<Resentotp> {
  TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resent otp'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextFormField(
                controller: phone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  labelText: 'Via Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }

                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Telegram OTP Resent: Secure login with one-time codes via SMS. OtpPage for input, Resentotp to request via phone. User-friendly and safe.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const OtpPage()));
                }
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
