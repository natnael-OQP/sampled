import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(bottom: height * .008),
      padding: EdgeInsets.symmetric(
        vertical: height * .03,
        horizontal: width * .02,
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
                padding: EdgeInsets.symmetric(
                  vertical: height * .008,
                  horizontal: width * .04,
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
                padding: EdgeInsets.symmetric(
                  vertical: height * .005,
                  horizontal: width * .04,
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
          Padding(
            padding: EdgeInsets.only(top: height * .02, bottom: height * .007),
            child: const Text(
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
