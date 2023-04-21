// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ShowAllButton extends StatelessWidget {
  ShowAllButton({super.key, required this.ontap});
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'смотреть все ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward,
          ),
        ],
      ),
    );
  }
}
