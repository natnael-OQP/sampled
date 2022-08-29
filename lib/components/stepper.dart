import 'package:flutter/material.dart';

class MultiStep extends StatelessWidget {
  const MultiStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        )
      ],
    ));
  }
}
