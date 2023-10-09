// import 'dart:ui';

// import 'package:clone_ig/pages/widgets/costumtextfield.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//   final Color colorText = Color.fromARGB(230, 93, 91, 91);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // backgroundColor: Color.fromARGB(235, 243, 254, 255),

//         // body
//         body: Column(
//       children: [
//         SizedBox(
//           height: 50,
//         ),
//         Center(
//           child: Text(
//             'English(US)',
//             style: TextStyle(color: colorText, fontSize: 12),
//           ),
//         ),
//         // Image.asset('images/ig.png'),
//         SizedBox(height: 120),
//         Container(
//           width: 50,
//           height: 50,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                   'images/igfullcolor.png'), // Ganti dengan sumber gambar Anda
//               fit: BoxFit.cover, // Atur pemadatan gambar sesuai kebutuhan
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Costumtextfield(
//           labelText: 'Username,email,or mobile number',
//           obscureText: false,
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Costumtextfield(
//           labelText: 'Password',
//           obscureText: true,
//         ),
//         ElevatedButton(
//             style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
//             onPressed: () {},
//             child: Text('Log in'))
//       ],
//     ));
//   }
// }
