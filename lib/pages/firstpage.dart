import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JAKNOIz App"),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 0, 255, 42),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Plese enter your username.";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Plese enter your password.";
                }
                return null;
              },
              obscureText: true,
              obscuringCharacter: "*",
              controller: _passwordCtrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
