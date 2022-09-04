import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: const Color(0xFFFFA600),
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.jpg'),
            // fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Text("Welcome"),
          ],
        ),
      ),
    );
  }
}
