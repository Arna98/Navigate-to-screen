import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  TextEditingController textFieldNameControler = TextEditingController();
  TextEditingController textFieldEmailControler = TextEditingController();
  TextEditingController textFieldPasswordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => _navigatorPop(context),
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Sign Up"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                controller: textFieldNameControler,
                decoration: const InputDecoration(
                    hintText: "Name",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                controller: textFieldEmailControler,
                decoration: const InputDecoration(
                    hintText: "Email",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                controller: textFieldPasswordControler,
                decoration: const InputDecoration(
                    hintText: "Password",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _sendDataToHomePage(
                      context,
                      textFieldNameControler.text,
                      textFieldEmailControler.text,
                      textFieldPasswordControler.text);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    fixedSize: const Size(200, 30)),
                child: const Text("Sign Up"))
          ]),
        ),
      ),
    );
  }
}

void _sendDataToHomePage(
    BuildContext context, String name, String email, String password) {
  List<String> info = [name, email, password];
  Navigator.pop(context, info);
}

void _navigatorPop(BuildContext context) {
  Navigator.pop(context);
}
