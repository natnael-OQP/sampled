import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: HexColor("#E5EDF9"),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Text(
                  "Text #1",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: HexColor("#F7CCCC"),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: const [
                    Text(
                      "Blood",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5),
            child: Text(
              "Blood Cholesterol test",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(
            "Blood test done to determine whether your cholesterol is high.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
