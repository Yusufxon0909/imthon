import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imtihon/sahif3.dart';

class Sahif2 extends StatefulWidget {
  const Sahif2({super.key});

  @override
  State<Sahif2> createState() => _Sahif2State();
}

class _Sahif2State extends State<Sahif2> {
  final TextEditingController _cardNumberController = TextEditingController();
  final FocusNode _cardNumberFocusNode = FocusNode();

  final TextEditingController _expiryController = TextEditingController();
  final FocusNode _expiryFocusNode = FocusNode();

  final TextEditingController _cvvController = TextEditingController();
  final FocusNode _cvvFocusNode = FocusNode();

  final TextEditingController _cardholderNameController =
      TextEditingController();
  final FocusNode _cardholderNameFocusNode = FocusNode();

  bool _isIconPressed = false;

  // Yangi ochilgan listlar
  List<String> cardNumbers = [];
  List<String> expiryDates = [];
  List<String> cvvCodes = [];
  List<String> cardholderNames = [];

  @override
  void initState() {
    super.initState();
    _cardNumberFocusNode.addListener(() {
      setState(() {});
    });
    _expiryFocusNode.addListener(() {
      setState(() {});
    });
    _cvvFocusNode.addListener(() {
      setState(() {});
    });
    _cardholderNameFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardNumberFocusNode.dispose();
    _expiryController.dispose();
    _expiryFocusNode.dispose();
    _cvvController.dispose();
    _cvvFocusNode.dispose();
    _cardholderNameController.dispose();
    _cardholderNameFocusNode.dispose();
    super.dispose();
  }

  void _toggleIcon() {
    setState(() {
      _isIconPressed = !_isIconPressed;
    });
  }

  bool _validateFields() {
    return _cardNumberController.text.isNotEmpty &&
        _expiryController.text.isNotEmpty &&
        _cvvController.text.isNotEmpty &&
        _cardholderNameController.text.isNotEmpty;
  }

  // Kartani listga qo'shish funksiyasi
  void _addCardToList() {
    setState(() {
      cardNumbers.add(_cardNumberController.text);
      expiryDates.add(_expiryController.text);
      cvvCodes.add(_cvvController.text);
      cardholderNames.add(_cardholderNameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add new card",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    height: 2,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _cardNumberController,
                    focusNode: _cardNumberFocusNode,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.blue),
                      label: Text("Card number"),
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.credit_card,
                        color: _cardNumberFocusNode.hasFocus
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: TextField(
                            controller: _expiryController,
                            focusNode: _expiryFocusNode,
                            decoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: Colors.blue),
                              label: Text("MM/YY"),
                              labelStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(
                                Icons.calendar_month,
                                color: _expiryFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextField(
                            controller: _cvvController,
                            focusNode: _cvvFocusNode,
                            decoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: Colors.blue),
                              label: Text("CVV"),
                              labelStyle: TextStyle(color: Colors.grey),
                              suffixIcon: Icon(
                                Icons.error,
                                color: _cvvFocusNode.hasFocus
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _cardholderNameController,
                    focusNode: _cardholderNameFocusNode,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(color: Colors.blue),
                      label: Text("Cardholders name"),
                      labelStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _toggleIcon,
                        child: Icon(
                          Icons.check_circle_outline_rounded,
                          color: _isIconPressed ? Colors.blue : Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Save card",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (_validateFields()) {
                        _addCardToList(); // Karta ma'lumotlarini listga qo'shish
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sahif3(
                              cvvList: cvvCodes,
                              cardNumberList: cardNumbers,
                              cardHolderList: cardholderNames,
                              expiryDateList: expiryDates,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Iltimos, ma'lumotni to'ldiring"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Add card",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
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
