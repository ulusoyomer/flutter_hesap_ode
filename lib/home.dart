import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayBill extends StatefulWidget {
  const PayBill({super.key});
  @override
  State<PayBill> createState() => _PayBillState();
}

class _PayBillState extends State<PayBill> {
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
        onPressed: () {},
        child: Text(
          text,
          style: fontMontserrat(color: const Color.fromRGBO(255, 46, 99, 1)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    if (screenHeight > 670.0) {
      return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: mainLayout(context),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: mainLayout(context),
            ),
          ),
        ),
      );
    }
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
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Toplam Fiyat",
                    style: fontMontserrat(
                      fontSize: 20,
                      color: const Color.fromRGBO(255, 46, 99, 1),
                    ),
                  ),
                  Text(
                    "34₺",
                    style: fontMontserrat(
                      fontSize: 25,
                      color: const Color.fromRGBO(255, 46, 99, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 40, top: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kişi Sayısı",
                        style: fontMontserrat(),
                      ),
                      Text(
                        "Bahşiş",
                        style: fontMontserrat(),
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
                        "5",
                        style: fontMontserrat(),
                      ),
                      Text(
                        "10₺",
                        style: fontMontserrat(),
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
        min: 0,
        max: 15,
        divisions: 15,
        activeColor: const Color.fromRGBO(8, 217, 214, 1),
        inactiveColor: Colors.grey,
        value: 12,
        onChanged: ((value) {}),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width - 40.0) / 2,
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
                        onPressed: () {},
                        backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
                        child: const Icon(
                          Icons.remove,
                          color: Color.fromRGBO(255, 46, 99, 1),
                        ),
                      ),
                    ),
                    Text(
                      "20",
                      style: fontMontserrat(
                        fontSize: 27,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: FloatingActionButton(
                        onPressed: () {},
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
          const SizedBox(
            width: 10,
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 60.0) / 2,
            height: 70,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(37, 42, 52, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                onChanged: (value) {},
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: "Kişi",
                  labelStyle: fontMontserrat(fontSize: 15),
                ),
              ),
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
            backgroundColor: const Color.fromRGBO(255, 46, 99, 1)),
        onPressed: () {},
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
