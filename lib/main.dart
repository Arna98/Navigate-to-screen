import 'package:flutter/material.dart';
import 'package:navigate_to_screen/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigate to new screen',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  // this allows us to access the TextField text
  TextEditingController textFieldEmailControler = TextEditingController();
  TextEditingController textFieldPasswordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Home"),
        centerTitle: true,
        actions: const [
          Icon(Icons.notifications),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 15, 0),
            child: Icon(Icons.search),
          )
        ],
        elevation: 1,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(children: [
        //Text field email
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
          child: TextField(
            controller: textFieldEmailControler,
            decoration: const InputDecoration(
                hintText: "Email",
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.deepPurpleAccent, width: 2))),
          ),
        ),
        //Text field password
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: textFieldPasswordControler,
            decoration: const InputDecoration(
              hintText: "Password",
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.deepPurpleAccent, width: 2)),
            ),
          ),
        ),
        //Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Elevated button login
            ElevatedButton(
                onPressed: () {
                  _sendDataToLoginScreen(context, textFieldEmailControler,
                      textFieldPasswordControler);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 30),
                    primary: Colors.deepPurpleAccent),
                child: const Text("Login")),
            //Elevated button sign up
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  primary: Colors.deepPurpleAccent),
              child: const Text("Sign Up"),
            )
          ],
        )
      ]),
    );
  }
}

void _sendDataToLoginScreen(BuildContext context, TextEditingController email,
    TextEditingController password) {
  String emailToSend = email.text;
  String passwordToSend = password.text;
  Navigator.push(
      context, MaterialPageRoute(builder: ((context) => LoginPage(email: emailToSend,password: passwordToSend))));
}
