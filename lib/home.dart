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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
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
              width: MediaQuery.of(context).size.width,
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
                    padding: const EdgeInsets.all(15),
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
                  width: MediaQuery.of(context).size.width / 2,
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
                              backgroundColor:
                                  const Color.fromRGBO(234, 234, 234, 1),
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
                              backgroundColor:
                                  const Color.fromRGBO(234, 234, 234, 1),
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
                  width: MediaQuery.of(context).size.width / 3,
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
