import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final String bill;
  final double friends;
  final double tips;
  const ResultPage(
      {super.key,
      required this.bill,
      required this.friends,
      required this.tips});

  @override
  // ignore: no_logic_in_create_state
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String result;
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
  void initState() {
    super.initState();
    double finalBill =
        (double.parse(widget.bill.replaceAll(',', '.')) + widget.tips) /
            widget.friends;
    setState(() {
      result = finalBill.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Ödenecek Tutar",
                    style: fontMontserrat(fontSize: 25, color: Colors.black),
                  ),
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
                            top: 15,
                            left:
                                (MediaQuery.of(context).size.width - 40) / 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Ödenecek Tutar",
                              style: fontMontserrat(
                                fontSize:
                                    (MediaQuery.of(context).size.width - 40) /
                                        20,
                                color: const Color.fromRGBO(255, 46, 99, 1),
                              ),
                            ),
                            Text(
                              "$result₺",
                              style: fontMontserrat(
                                fontSize:
                                    (MediaQuery.of(context).size.width - 40) /
                                        15,
                                color: const Color.fromRGBO(255, 46, 99, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 50,
                            top: 15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kişi Sayısı",
                                  style: fontMontserrat(
                                      fontSize:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              20),
                                ),
                                Text(
                                  "Bahşiş",
                                  style: fontMontserrat(
                                      fontSize:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              20),
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
                                  widget.friends.round().toString(),
                                  style: fontMontserrat(
                                      fontSize:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              20),
                                ),
                                Text(
                                  "${widget.tips}₺",
                                  style: fontMontserrat(
                                      fontSize:
                                          (MediaQuery.of(context).size.width -
                                                  40) /
                                              20),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Card(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Kişi Başı Ödenecek Tutar",
                          style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 20,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$result₺",
                          style: fontMontserrat(
                            fontSize:
                                (MediaQuery.of(context).size.width - 40) / 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(255, 46, 99, 1),
                            ),
                            onPressed: () => Navigator.pop(context),
                            child: Center(
                              child: Text(
                                "Yeniden Hesapla",
                                style: fontMontserrat(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
