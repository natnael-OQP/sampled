// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MultiStep extends StatefulWidget {
  const MultiStep({super.key});

  @override
  State<MultiStep> createState() => _MultiStepState();
}

class _MultiStepState extends State<MultiStep> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * .03, vertical: height * .03),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconContainer(
                color: Colors.blue.shade400,
                currentIndex: currentIndex,
                index: 0,
                onTap: () => {
                  setState(() {
                    currentIndex = 0;
                  })
                },
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: height * .008),
                  height: 3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade400, Colors.amber.shade700],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              IconContainer(
                color: Colors.amber.shade700,
                currentIndex: currentIndex,
                index: 1,
                onTap: () => {
                  setState(() {
                    currentIndex = 1;
                  })
                },
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: height * .008),
                  height: 3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.amber.shade700, Colors.green.shade700],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              IconContainer(
                color: Colors.green.shade700,
                currentIndex: currentIndex,
                index: 2,
                onTap: () => {
                  setState(() {
                    currentIndex = 2;
                  })
                },
              ),
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
    );
  }
}

class IconContainer extends StatelessWidget {
  final int currentIndex;
  final int index;
  final VoidCallback onTap;
  final Color color;

  const IconContainer({
    Key? key,
    required this.currentIndex,
    required this.color,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Transform.translate(
        offset: const Offset(-5.0, -5.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: currentIndex >= index ? color : Colors.black12,
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
      ),
    );
  }
}
