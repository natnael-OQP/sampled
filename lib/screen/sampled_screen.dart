// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:sampled/components/test_card.dart';

class SampledScreen extends StatelessWidget {
  const SampledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9FAFF"),
      body: Padding(
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const IconContainer(color: Colors.blue),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            color: Colors.black12,
                            height: 2,
                          ),
                        ),
                        const IconContainer(color: Colors.black12),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            color: Colors.black12,
                            height: 2,
                          ),
                        ),
                        const IconContainer(color: Colors.black12),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Requested"),
                        Text("Sampled"),
                        Text("Received"),
                      ],
                    )
                  ],
                ),
              ),
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
                    const TestCard(), const TestCard(), const TestCard()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final Color color;
  const IconContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-5.0, -5.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(
          Icons.list_alt,
          color: Colors.white,
        ),
      ),
    );
  }
}
