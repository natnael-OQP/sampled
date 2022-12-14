// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sampled/components/stepper.dart';

import 'package:sampled/components/test_card.dart';

class SampledScreen extends StatelessWidget {
  const SampledScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("#F9FAFF"),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height * .05,
              left: width * .04,
              right: width * .04,
            ),
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
                    padding: EdgeInsets.symmetric(vertical: height * .035),
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
                        Padding(
                          padding: EdgeInsets.only(top: height * .008),
                          child: const Text(
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
                        const TestCard(), const TestCard(), const TestCard()
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
