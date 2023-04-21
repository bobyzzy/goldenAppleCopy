import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_blogger.dart';
import 'package:shop_app/components/home_page_cards.dart';
import 'package:shop_app/components/home_page_circle.dart';
import 'package:shop_app/components/home_page_faq.dart';
import 'package:shop_app/components/home_page_hot_cards.dart';
import 'package:shop_app/components/home_page_sale.dart';
import 'package:shop_app/components/home_page_stack_card.dart';
import 'package:shop_app/components/home_page_zina.dart';
import 'package:shop_app/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final bodyText = const TextStyle(
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MySlider(),
            const SizedBox(height: 20),

            HomePageCircle(),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Новинки',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            HomePageScroll(),
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Акции',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            HomePageSale(),
            const SizedBox(height: 70),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Хиты',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(height: 30),
            HomePageHotScroll(),
            const SizedBox(height: 70),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Клиентские дни',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(height: 30),
            HomePageFaq(
              label: "Bon Parfumeur Parish - 40%",
              dateTime: "27 - 28",
              month: 'января',
              description:
                  "ароматы с нотами белого мскуса, табака, нероли, коньяка и другими",
              imageAsset: 'font-view.jpg',
              ontap: () {},
            ),
            const SizedBox(height: 80),
            //! лагает нало пофиксить
            HomePageStack(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20),
              child: Text(
                'блогерры советуют',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),

            HomePageBlogger(),
            const SizedBox(height: 60),
            HomePageStackZina(),
          ],
        ),
      ),
    );
  }
}
