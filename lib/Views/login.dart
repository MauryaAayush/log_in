import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              labelText: 'Email',
              hintText: 'abc@gmail.com',
              prefixIcon: Icon(Icons.mail_outline),

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: TextField(
            maxLength: 8,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              alignLabelWithHint: true,
              hintText: '@abc123',
              counterText: '0/8',
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock)
            ),
          ),
        ),
      ],
    ),
    );
  }
}
