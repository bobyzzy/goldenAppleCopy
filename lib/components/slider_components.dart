import 'package:flutter/material.dart';

import 'myButton.dart';

class SliderPage extends StatelessWidget {
  SliderPage({
    super.key,
    required this.labelString,
    required this.subString,
    required this.imagePath,
    required this.buttonName,
    required this.color,
    required this.ontap,
  });

  final String labelString;
  final String subString;
  final String imagePath;
  final String buttonName;
  final Color color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/$imagePath"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Text(
              labelString,
              style: TextStyle(
                fontSize: 32,
                color: color,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subString,
              style: TextStyle(
                fontSize: 16,
                color: color,
              ),
            ),
            const SizedBox(height: 250),
            MyButton(
              buttonName: buttonName,
              onTap: ontap,
            ),
          ],
        ),
      ),
    );
  }
}
