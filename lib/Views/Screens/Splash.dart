import 'package:barber/Views/Models/Theme.dart';
import 'package:barber/Views/Screens/Login.dart';
import 'package:barber/Views/Screens/Personal_Info.dart';
import 'package:barber/Views/Screens/Register.dart';
import 'package:barber/Views/Widgets/BottomNavigation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/unsplash.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/screen.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.38,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset("assets/logo.png"),
                )),
            Positioned(
                top: screenHeight * 0.48,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Book your haricut",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "in seconds",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
            Positioned(
              top: screenHeight * 0.58,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.1,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Schedule your next haircut within a few seconds.Easily ",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Reserve and manage your appointments.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.7,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.2,
                  //color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            width: screenWidth,
                            height: screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A2929),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PersonalInformationScreen()));
                          },
                          child: Container(
                              height: screenHeight * 0.07,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text("Register"),
                              )),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
