// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePagesaleCard extends StatelessWidget {
  HomePagesaleCard({
    super.key,
    required this.labelText,
    required this.subText,
    required this.dateTime,
    required this.month,
    required this.imageAsset,
    required this.ontap,
  });
  final String labelText;
  final String subText;
  final String dateTime;
  final String month;
  final String imageAsset;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: 39.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: width * .8,
              height: height * .25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/$imageAsset'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: width * .8,
              height: height * .15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          labelText,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          subText,
                          softWrap: true,
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "$dateTime \n $month",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
