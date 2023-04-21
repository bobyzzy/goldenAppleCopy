import 'package:flutter/material.dart';

class CircleComponent extends StatelessWidget {
  const CircleComponent(
      {super.key, required this.imageAsset, required this.subLabel});
  final String imageAsset;
  final String subLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(168, 255, 5, 1),
              ),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(50),
                  child: Image.asset(
                    "assets/img/$imageAsset",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              subLabel,
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
