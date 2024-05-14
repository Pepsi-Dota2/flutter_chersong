// import 'package:flutter/material.dart';
// import 'package:flutter_chersong/page/about.dart';
// import 'package:flutter_chersong/page/detail.dart';
// import 'package:flutter_chersong/page/home.dart';

// class BTNavigation extends StatefulWidget {
//   const BTNavigation({super.key});

//   @override
//   State<BTNavigation> createState() => _BTNavigationState();
// }

// var currentPage = 0;
// final multiPage = [
//   const HomePage(),
//   const About(),
//   const Detail()

// ];

// class _BTNavigationState extends State<BTNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: multiPage[currentPage],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentPage,
//         onTap: (value) =>  setState(() => currentPage = value),
//         selectedItemColor: Colors.black,
//         items: const <BottomNavigationBarItem> [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Account"),
//         ],
//       ),
//     );
//   }
// }
