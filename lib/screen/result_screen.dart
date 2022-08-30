import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sampled/components/result_card.dart';
import 'package:sampled/components/stepper.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9FAFF"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // text
                  const Center(
                    child: Text(
                      "Investigative Request",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const MultiStep(),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // id
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Req ID: ",
                              style: TextStyle(
                                // fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "AAA400570",
                              style: TextStyle(
                                // fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "lyosiyas Haile",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const Text(
                          "78005621",
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        Row(
                          children: const [
                            Spacer(),

                            /// date
                            Text(
                              "09/22/2022",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        const ResultCard(),
                        const ResultCard(),
                        const ResultCard(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
