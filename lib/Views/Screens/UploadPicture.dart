import 'dart:io';
import 'package:barber/Views/Models/StaticVariable.dart';
import 'package:barber/Views/Screens/Availibility.dart';
import 'package:barber/Views/Screens/PaymentMethod.dart';
import 'package:barber/Views/Widgets/RegisteredIcons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPictureScreen extends StatefulWidget {
  const UploadPictureScreen({super.key});

  @override
  State<UploadPictureScreen> createState() => _UploadPictureScreenState();
}

class _UploadPictureScreenState extends State<UploadPictureScreen> {
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
                  child: const RegistrationIcon(),
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
                  "Upload your picture",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.15,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    getImagefromGallery();
                  },
                  child: Container(
                    height: screenHeight * 0.06,
                    color: const Color.fromARGB(255, 244, 247, 247),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            getImagefromGallery();
                          },
                          icon: const Icon(Icons.download),
                        ),
                        const Text("Choose a file"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.25,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.4,
                child: _image != null
                    ? Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(_image!),
                        ),
                      )
                    : const Center(child: Text('No image selected')),
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
                    Staticvariable.iconvalue = 3;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentMethodScreen()));
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
