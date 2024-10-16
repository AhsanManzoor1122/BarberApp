import 'package:barber/Views/Models/Theme.dart';
import 'package:barber/Views/Screens/OrderServices.dart';
import 'package:flutter/material.dart';

class ServicesDetailScreen extends StatefulWidget {
  const ServicesDetailScreen({super.key});

  @override
  State<ServicesDetailScreen> createState() => _ServicesDetailScreenState();
}

class _ServicesDetailScreenState extends State<ServicesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Job Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 237, 234, 230),
              alignment: Alignment.center,
              height: screenHeight * 0.1,
              width: screenWidth,
              child: Text(
                "What services you want?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Container(
              height: screenHeight * 0.55,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    height: screenHeight * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.primaryColor.withOpacity(
                              0.3), // Shaded red color for the border
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(2, 2), // Position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Haircut",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(240, 9, 66, 150)),
                        ),
                        Radio(
                            value: 'Radio',
                            groupValue: "",
                            onChanged: (String? val) {
                              String value = val!;
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.primaryColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderServiceScreen()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
