import 'package:flutter/material.dart';

class EmailWithLogin extends StatefulWidget {
  const EmailWithLogin({super.key});

  @override
  State<EmailWithLogin> createState() => _EmailWithLoginState();
}

class _EmailWithLoginState extends State<EmailWithLogin> {
  TextEditingController emailTXTController = TextEditingController();
  TextEditingController passwordTXTController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: emailTXTController,
          ),
        ],
      ),
    );
  }
}
