import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.arrow_back), Icon(Icons.menu)],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          children: [
            Text(
              "Nike shoe store",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}





//  Container(
//         width: 150,
//         height: 200,
//         color: Colors.blue,
//         child: Stack(
//           clipBehavior:
//               Clip.none, // Muhim: Stackdan tashqariga chiqishga ruxsat beradi
//           children: [
//             Positioned(
//               top: -20, // Rasmni yuqoriga siljitadi
//               left: -10, // Rasmni chapga siljitadi
//               right: -10, // O'ngdan ham tashqariga chiqaradi
//               child: Image.asset(
//                 'rasm/k2.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Positioned(
//               bottom: 10,
//               left: 10,
//               child:
//                   Text('Blue\n\$220.00', style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ) ,