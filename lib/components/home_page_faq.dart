// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePageFaq extends StatelessWidget {
  HomePageFaq({
    super.key,
    required this.label,
    required this.dateTime,
    required this.month,
    required this.description,
    required this.imageAsset,
    required this.ontap,
  });

  final String label;
  final String dateTime;
  final String month;
  final String description;
  final String imageAsset;

  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: height * .2,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/$imageAsset'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              '$dateTime  $month',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
