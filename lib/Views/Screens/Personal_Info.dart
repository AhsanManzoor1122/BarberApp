import 'package:barber/Views/Models/StaticVariable.dart';
import 'package:barber/Views/Screens/Availibility.dart';
import 'package:barber/Views/Screens/PaymentMethod.dart';
import 'package:barber/Views/Screens/Register.dart';
import 'package:barber/Views/Screens/UploadPicture.dart';
import 'package:barber/Views/Widgets/RegisteredIcons.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  final List<Widget> screens = [
    PersonalInformationScreen(),
    UploadPictureScreen(),
    AvailibilityScreen(),
    PaymentMethodScreen(),
  ];

  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Register",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.08,
                  child: RegistrationIcon(),
                )),
            Positioned(
                top: screenHeight * 0.09,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.05,
                  alignment: Alignment.center,
                  child: Text(
                    "Personal Information",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.16,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.6,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black12)),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isObscured = !_isObscured;
                                    });
                                  },
                                  icon: Icon(
                                    _isObscured
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          initialCountryCode: 'US',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            hintText: "Address",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
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
                    Staticvariable.iconvalue = 2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UploadPictureScreen()));
                  },
                  child: Container(
                      height: screenHeight * 0.07,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black26),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text("Next"),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
