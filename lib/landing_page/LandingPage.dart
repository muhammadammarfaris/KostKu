import 'package:flutter/material.dart';
import 'package:kostku_app/helpers/utils.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth * 0.4; // Setengah dari lebar layar

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  logo,
                  scale: 0.8,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Aplikasi pencari kos nomer 1 di Indonesia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.09,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Selamat datang di aplikasi pencari kos kami! Kami akan membantu Anda menemukan kos yang sesuai dengan kebutuhan Anda.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: screenWidth * 0.05,
                  ),
                ),
                SizedBox(height: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => null,
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: screenWidth * 0.06),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.025, horizontal: screenWidth * 0.1),
                          backgroundColor: Color(0xFF2254D1),
                          elevation: 0,

                        ),
                      ),
                    ),
                    SizedBox(width: 16.0), // Spasi antara tombol
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => null,
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: screenWidth * 0.06, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.025, horizontal: screenWidth * 0.1),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          side: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
