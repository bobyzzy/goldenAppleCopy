import 'package:flutter/material.dart';
import 'package:shop_app/components/show_all_button.dart';

import 'home_page_cards_components.dart';

class HomePageScroll extends StatelessWidget {
  HomePageScroll({super.key});

  final List<String> productCategory = [
    'Вернхяя одежда',
    "Шапки",
    'Косметика',
    "Вечерние платье ",
  ];
  final List<String> productCompany = [
    "Bershka",
    'GAP Бейзболки',
    "Okolo beam",
    'Armani',
  ];

  final List<String> productSalary = [
    '120',
    '130',
    '110',
    '150',
  ];
  final List<String> boxName = [
    'New',
    "only in GA",
    '%20',
    '%50',
  ];

  final List<String> imageAsset = [
    'hody.jpg',
    'cap.jpg',
    'cosmetics.jpg',
    'dresses.jpg',
  ];

  final List color = [
    Colors.brown,
    Colors.green,
    Colors.blue,
    Colors.brown,
  ];

  final List ontap = [
    () {},
    () {},
    () {},
    () {},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productCategory.length,
        itemBuilder: (context, index) {
          return HomePageCards(
            productCategory: productCategory[index],
            productCompany: productCompany[index],
            productSalary: productSalary[index],
            boxName: boxName[index],
            imagaAsset: imageAsset[index],
            colorBox: color[index],
            ontap: ontap[index],
          );
        },
      ),
    );
  }
}
