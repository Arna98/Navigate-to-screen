import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({required String email, required String password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Login"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
