// import 'package:barber/Views/Screens/Availibility.dart';
// import 'package:barber/Views/Screens/PaymentMethod.dart';
// import 'package:barber/Views/Screens/Personal_Info.dart';
// import 'package:barber/Views/Screens/Register.dart';
// import 'package:barber/Views/Screens/UploadPicture.dart';
// import 'package:flutter/material.dart';

// class BottomNavigationScreen extends StatefulWidget {
//   const BottomNavigationScreen({super.key});

//   @override
//   State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
// }

// class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//   int _selectedIndex = 0;

//   // Create a list of screens
//   final List<Widget> screens = [
//     const PersonalInformationScreen(),
//     const UploadPictureScreen(),
//     const AvailibilityScreen(),
//     const PaymentMethodScreen(),
//     const RegisterScreen(),
//   ];

//   void onItemTap(int value) {
//     setState(() {
//       _selectedIndex = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: screens[_selectedIndex],
//           ),
//           Positioned(
//             top: 100,
//             //bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               child: BottomNavigationBar(
//                 items: const [
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.person),
//                     label: 'Personal Info',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.photo),
//                     label: 'Upload Picture',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.calendar_today),
//                     label: 'Availability',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.payment),
//                     label: 'Payment',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.app_registration),
//                     label: 'Register',
//                   ),
//                 ],
//                 selectedItemColor: Colors.red,
//                 unselectedItemColor: Colors.green,
//                 currentIndex: _selectedIndex,
//                 onTap: onItemTap,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
