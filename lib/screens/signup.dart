import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Sign Up"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Name",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepPurpleAccent, width: 2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepPurpleAccent, width: 2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepPurpleAccent, width: 2))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _sendDataToHomePage(context);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  fixedSize: const Size(200, 30)),
              child: const Text("Sign Up"))
        ]),
      ),
    );
  }
}

void _sendDataToHomePage(BuildContext context) {}
