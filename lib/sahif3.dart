import 'package:flutter/material.dart';

class Sahif3 extends StatefulWidget {
  final List<String> cvvList;
  final List<String> cardNumberList;
  final List<String> cardHolderList;
  final List<String> expiryDateList;

  const Sahif3({
    Key? key,
    required this.cvvList,
    required this.cardNumberList,
    required this.cardHolderList,
    required this.expiryDateList,
  }) : super(key: key);

  @override
  State<Sahif3> createState() => _Sahif3State();
}

class _Sahif3State extends State<Sahif3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List"),
      ),
      body: ListView.builder(
        itemCount: widget.cardNumberList.length, // Karta soni bo'yicha element yaratish
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
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
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            widget.cardNumberList[index], // Karta raqami ro'yxatdan olinadi
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            widget.cardHolderList[index], // Egasi ismi ro'yxatdan olinadi
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            widget.expiryDateList[index], // Yaroqlilik muddati ro'yxatdan olinadi
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "Aloqa bank",
                            style: TextStyle(fontSize: 18, color: Colors.white),
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
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "CVV",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            widget.cvvList[index], // CVV ro'yxatdan olinadi
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
