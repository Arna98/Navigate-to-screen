import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String email;
  String password;
  LoginPage({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Login"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(children: [
        Text("Hi, $email \n Your password is $password"),
        const Text(
            "If you want to go back the home page, press the button below"),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back To Home"))
      ]),
    );
  }
}
