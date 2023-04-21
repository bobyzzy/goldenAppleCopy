import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_sale_cards.dart';
import 'package:shop_app/screens/sale_page_description.dart';

class HomePageSale extends StatelessWidget {
  HomePageSale({super.key});

  final labelText = [
    'Фантастическая \n распродажа до -40%',
    "Кибер понедельник до\n-40% ",
    "Подарок от Vichy ",
    "подарок от Versage",
    "Подарок от Vichy "
  ];
  final subText = [
    'суперцены на тысячи товаров',
    'азиатские товары,новые продукции\n и многое другое',
    'биоэнзимная маска для лица',
    'миниатюра аромата',
    'стильный шоппер',
  ];

  final date = [
    "3 - 31",
    '14 - 30',
    '2 - 28',
    '1 - 15',
    '15 - 30',
  ];
  final moth = [
    'январь',
    'февраль',
    'январь',
    'февраль',
    'январь',
  ];
  final imageAsset = [
    'saleBg.jpg',
    "cyber.png",
    "parfumSale.jpg",
    "creamSale.jpg",
    "shopper.jpg",
  ];
  final ontap = [
    () {},
    () {},
    () {},
    () {},
    () {},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labelText.length,
        itemBuilder: (context, index) {
          return HomePagesaleCard(
            labelText: labelText[index],
            subText: subText[index],
            dateTime: date[index],
            month: moth[index],
            imageAsset: imageAsset[index],
            ontap: ontap[index],
          );
        },
      ),
    );
  }
}
