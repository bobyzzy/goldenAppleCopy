import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_cards_components.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Text(
              "Избранное ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          HomePageCards(
            productCategory: 'Шампунь для ночного восстановления волос',
            productCompany: 'SALONHANDX blooming shampoo',
            productSalary: '65',
            boxName: 'new',
            imagaAsset: 'creamSale.jpg',
            ontap: () {},
            colorBox: Colors.green,
          )
        ],
      ),
    );
  }
}
