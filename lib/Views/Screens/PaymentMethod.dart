import 'dart:io';
import 'package:barber/Views/Models/StaticVariable.dart';
import 'package:barber/Views/Screens/Register.dart';
import 'package:barber/Views/Widgets/RegisteredIcons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  File? _image;
  final picker = ImagePicker();
  Future getImagefromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

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
                  "Add Payment Method",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.16,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: screenHeight * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      child: Image.asset("assets/card.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Credit Card"),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: screenHeight * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      child: Image.asset("assets/paypal.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("PayPal"),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: screenHeight * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Container(
                                      child:
                                          Image.asset("assets/googlepay.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Google Pay"),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              top: screenHeight * 0.7,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Staticvariable.iconvalue = 5;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Container(
                    height: screenHeight * 0.07,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black26),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text("Next"),
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
