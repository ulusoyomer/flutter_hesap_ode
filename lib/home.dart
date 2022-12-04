import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayBill extends StatefulWidget {
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
                          "34",
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
                              "10",
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
          ],
        ),
      ),
    );
  }
}
