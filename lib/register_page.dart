import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // go back
          },
          child: const Text("Back to Login"),
        ),
      ),
    );
  }
}
