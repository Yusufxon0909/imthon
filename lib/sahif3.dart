import 'package:flutter/material.dart';

class Sahif3 extends StatefulWidget {
  final String cvv;
  final String cardnumber;
  final String cardholder;
  final String carddata;

  const Sahif3({
    Key? key,
    required this.cvv,
    required this.cardnumber,
    required this.cardholder,
    required this.carddata,
  }) : super(key: key);

  @override
  State<Sahif3> createState() => _Sahif3State();
}

class _Sahif3State extends State<Sahif3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10), // Padding biroz kamaytirildi
          child: Container(
            width: double.infinity,
            height: 200, // Balandlik kamaytirildi
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8), // Radius biroz kamaytirildi
            ),
            child: Padding(
              padding: const EdgeInsets.all(8), // Ichki bo'shliq kamaytirildi
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Card number",
                          style: TextStyle(fontSize: 18), // Font biroz kichraytirildi
                        ),
                        Text(
                          widget.cardnumber,
                          style: TextStyle(fontSize: 20, color: Colors.white), // Font o'lchami kichraytirildi
                        ),
                        Text(
                          widget.cardholder,
                          style: TextStyle(fontSize: 20), // Font kichraytirildi
                        ),
                        Text(
                          widget.carddata,
                          style: TextStyle(color: Colors.white, fontSize: 15), // Font o'lchami kichraytirildi
                        ),
                        Text(
                          "Aloqa bank",
                          style: TextStyle(fontSize: 18, color: Colors.white), // Font o'lchami kichraytirildi
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "UZCARD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35, // Font o'lchami biroz kamaytirildi
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10), // Bo'sh joy qo'shildi
                        Text(
                          "CVV",
                          style: TextStyle(fontSize: 20), // Font o'lchami kichraytirildi
                        ),
                        Text(widget.cvv),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
