import 'package:flutter/cupertino.dart';
import 'package:shop_app/components/home_page_blogger_cards.dart';

class HomePageBlogger extends StatelessWidget {
  HomePageBlogger({super.key});
  final labelText = [
    'Что? Куда? Зачем? Как? Подарки на \n 8 марта',
    'Что? Куда? Зачем? Как?  Как сделать \nмужскую укладку',
    'Что? Куда? Зачем? Как? Подарки на \n 23 февраля',
    'Что? Куда? Зачем? Как? \n красить брови',
  ];
  final imageAsset = [
    'womanFirst.jpg',
    "manFirst.jpg",
    "manSecond.jpg",
    "granny.jpg",
  ];
  final ontap = [
    () {},
    () {},
    () {},
    () {},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labelText.length,
        itemBuilder: (context, index) {
          return HomePageBloggerCards(
            labelText: labelText[index],
            imageAsset: imageAsset[index],
            ontap: ontap[index],
          );
        },
      ),
    );
  }
  // return SingleChildScrollView(
  //   scrollDirection: Axis.horizontal,
  //   child: Row(
  //     children: <Widget>[
  //       HomePageBloggerCards(
  //         imageAsset: "womanFirst.jpg",
  //         labelText: 'Что? Куда? Зачем? Как? Подарки на \n 8 марта',
  //         ontap: () {},
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageBloggerCards(
  //         imageAsset: "manFirst.jpg",
  //         labelText: 'Что? Куда? Зачем? Как?  Как сделать \nмужскую укладку',
  //         ontap: () {},
  //       ),
  //       HomePageBloggerCards(
  //         imageAsset: "manSecond.jpg",
  //         labelText: 'Что? Куда? Зачем? Как? Подарки на \n 23 февраля',
  //         ontap: () {},
  //       ),
  //       HomePageBloggerCards(
  //         imageAsset: "granny.jpg",
  //         labelText: 'Что? Куда? Зачем? Как? \n красить брови',
  //         ontap: () {},
  //       ),
  //     ],
  //   ),
  // );
}
