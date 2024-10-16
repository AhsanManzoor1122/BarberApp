import 'dart:io';
import 'package:barber/Views/Screens/Availibility.dart';
import 'package:barber/Views/Screens/Dashboard.dart';
import 'package:barber/Views/Screens/Login.dart';
import 'package:barber/Views/Screens/PaymentMethod.dart';
import 'package:barber/Views/Widgets/RegisteredIcons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Register",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.08,
                child: const Center(
                  child: RegistrationIcon(),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.09,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.05,
                alignment: Alignment.center,
                child: const Text(
                  "Almost there",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.14,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: screenHeight * 0.05,
                  child: Text.rich(
                    TextSpan(
                      text:
                          "You are one step away to complete the registration. To Wrap this up, you can agree to our  ",
                      style: TextStyle(color: Colors.black38),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "\n\n",
                        ),
                        TextSpan(
                          text: "We publish the ",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        TextSpan(
                          text: "Company name Terms & Conditions ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text:
                              "so that you know what to expect as use our services. ",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        TextSpan(
                          text: "\n\n",
                        ),
                        TextSpan(
                          text:
                              "By checking the box below, you agree to these terms. ",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    softWrap: true,
                    maxLines: null,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.33,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: screenHeight * 0.05,
                  child: Row(
                    children: [
                      Radio<String>(
                          value: "selected",
                          groupValue: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          }),
                      Text("Terms & Conditions")
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.7,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()));
                  },
                  child: Container(
                    height: screenHeight * 0.07,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(width: 2, color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
