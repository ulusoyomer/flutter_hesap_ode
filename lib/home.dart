import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hesap_ode/result.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PayBill extends StatefulWidget {
  const PayBill({super.key});
  @override
  State<PayBill> createState() => _PayBillState();
}

class _PayBillState extends State<PayBill> {
  double friends = 1;
  double tips = 0;
  String bill = "";

  TextStyle fontMontserrat(
      {double fontSize = 18,
      Color color = const Color.fromRGBO(234, 234, 234, 1),
      FontWeight fontWeight = FontWeight.w700}) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  Expanded buildButton(String text) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          setState(() {
            if (text == "-") {
              bill = "";
              friends = 1;
              tips = 0;
            } else {
              if (bill.length < 8) bill += text;
            }
          });
        },
        child: Text(
          text,
          style: fontMontserrat(color: const Color.fromRGBO(255, 46, 99, 1)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: mainLayout(context),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> mainLayout(BuildContext context) {
    return [
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          "Hesap Öde",
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        width: MediaQuery.of(context).size.width - 40.0,
        height: 100,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(37, 42, 52, 1),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 15, left: (MediaQuery.of(context).size.width - 40) / 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Toplam Fiyat",
                    style: fontMontserrat(
                      fontSize: (MediaQuery.of(context).size.width - 40) / 20,
                      color: const Color.fromRGBO(255, 46, 99, 1),
                    ),
                  ),
                  Text(
                    "$bill₺",
                    style: fontMontserrat(
                      fontSize: (MediaQuery.of(context).size.width - 40) / 15,
                      color: const Color.fromRGBO(255, 46, 99, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 50, top: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kişi Sayısı",
                        style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 20),
                      ),
                      Text(
                        "Bahşiş",
                        style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        friends.round().toString(),
                        style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 20),
                      ),
                      Text(
                        "$tips₺",
                        style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 20),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "Kişi Sayısı",
        style: fontMontserrat(fontSize: 20, color: Colors.black),
      ),
      Slider(
        min: 1,
        max: 15,
        divisions: 14,
        activeColor: const Color.fromRGBO(8, 217, 214, 1),
        inactiveColor: Colors.grey,
        value: friends,
        onChanged: ((value) {
          setState(() {
            friends = value;
          });
        }),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 70,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(37, 42, 52, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                Text(
                  "Bahşiş",
                  style: fontMontserrat(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: FloatingActionButton(
                        heroTag: "btnDecrease",
                        onPressed: () {
                          setState(() {
                            if (tips >= 5) {
                              tips -= 5.0;
                            }
                          });
                        },
                        backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
                        child: const Icon(
                          Icons.remove,
                          color: Color.fromRGBO(255, 46, 99, 1),
                        ),
                      ),
                    ),
                    Text(
                      "$tips₺",
                      style: fontMontserrat(
                        fontSize: 27,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: FloatingActionButton(
                        heroTag: "btnIncrease",
                        onPressed: () {
                          setState(() {
                            tips += 5;
                          });
                        },
                        backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
                        child: const Icon(
                          Icons.add,
                          color: Color.fromRGBO(255, 46, 99, 1),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          buildButton("1"),
          buildButton("2"),
          buildButton("3"),
        ],
      ),
      Row(
        children: [
          buildButton("4"),
          buildButton("5"),
          buildButton("6"),
        ],
      ),
      Row(
        children: [
          buildButton("7"),
          buildButton("8"),
          buildButton("9"),
        ],
      ),
      Row(
        children: [
          buildButton(","),
          buildButton("0"),
          buildButton("-"),
        ],
      ),
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 46, 99, 1),
        ),
        onPressed: () {
          double? totalBill = double.tryParse(bill.replaceAll(',', '.'));
          if (totalBill != null) {
            if (totalBill > 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResultPage(
                          bill: bill, friends: friends, tips: tips))));
            }
          } else {
            showToast("Hesap tutarını giriniz!", context: context);
          }
        },
        child: Center(
          child: Text(
            'Hesabı Böl',
            style: fontMontserrat(color: Colors.white),
          ),
        ),
      )
    ];
  }
}
