import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

// ignore: must_be_immutable
class HomePageCards extends StatefulWidget {
  HomePageCards({
    required this.productCategory,
    required this.productCompany,
    required this.productSalary,
    required this.boxName,
    required this.imagaAsset,
    required this.ontap,
    required this.colorBox,
    super.key,
  });
  final String productCategory;
  final String productCompany;
  final String productSalary;
  final String boxName;
  final String imagaAsset;
  final Color? colorBox;
  Function()? ontap;

  @override
  State<HomePageCards> createState() => _HomePageCardsState();
}

class _HomePageCardsState extends State<HomePageCards> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        padding: const EdgeInsets.only(right: 20),
        color: Colors.white,
        height: height * .45,
        width: width * .52,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * .25,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/${widget.imagaAsset}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          color: widget.colorBox == null
                              ? Colors.transparent
                              : widget.colorBox,
                          child: Center(
                            child: Text(
                              widget.boxName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const LikeButton(
                          circleColor: CircleColor(
                            end: Color.fromARGB(0, 0, 0, 0),
                            start: Color.fromARGB(0, 0, 0, 0),
                          ),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Color.fromARGB(0, 0, 0, 0),
                            dotSecondaryColor: Color.fromARGB(0, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(widget.productCategory),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.productCompany,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("${widget.productSalary} BYN"),
            )
          ],
        ),
      ),
    );
  }
}
