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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(children: [
          Text("Hi, $email \nYour password is \"$password\"",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20)),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 24, 0, 8),
            child: Text(
                "If you want to go back the home page, press the button below :",
                textAlign: TextAlign.center),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
              child: const Text("Back To Home"))
        ]),
      ),
    );
  }
}
