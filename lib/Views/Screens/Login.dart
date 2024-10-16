import 'package:barber/Views/Screens/Register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
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
                top: screenHeight * 0.18,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset("assets/logo.png"),
                )),
            Positioned(
                top: screenHeight * 0.28,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "Welcome back.",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
            Positioned(
                top: screenHeight * 0.4,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Name or phone",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26)),
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
                              hintText: "Enter your password",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black26)),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text("Forget Password?")],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {},
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
                    ],
                  ),
                )),
            Positioned(
                top: screenHeight * 0.8,
                left: 0,
                right: 0,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have and account? ",
                      style: TextStyle(color: Colors.black38),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text("Register now"))
                  ],
                ))),
          ],
        ),
      ),
    );
  }
}
