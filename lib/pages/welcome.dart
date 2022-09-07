import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFFFA600),
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.jpg'),
            // fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100.0,
          ),
          child: Column(
            children: [
              Text(
                "Welcome to \n Quiz App",
                style: GoogleFonts.fredokaOne(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              //start button
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 130,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    child: Text(
                      "Start",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    // backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
