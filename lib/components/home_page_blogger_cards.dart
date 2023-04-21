import 'package:flutter/material.dart';

class HomePageBloggerCards extends StatelessWidget {
  HomePageBloggerCards(
      {super.key,
      required this.labelText,
      required this.imageAsset,
      required this.ontap});
  final String labelText;
  final String imageAsset;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * .25,
            width: width * .8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/$imageAsset'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              labelText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('смотреть подборку'),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward),
              ],
            ),
          )
        ],
      ),
    );
  }
}
