import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_cards_components.dart';

class HomePageStack extends StatelessWidget {
  HomePageStack({super.key});

  final productCategory = [
    "Румяна запяченные ",
    "пудра для лица запеченная",
    "тушь для ресниц",
    "гель для душа и шампунь",
    "консилер",
    "кремовые румяна"
  ];

  final productCompany = [
    'SHIK blush melange',
    'SHIK glow perfect powder',
    'SHIK extra volume eyelash mascara',
    'SHIK perfect concealer',
    'SHIK perfect concealer',
    'SHIK perfect liquid blush'
  ];
  final productSalary = ['50', '250', '70', '169', '120', '30'];
  final boxName = [
    'new',
    'hit',
    '%30',
    'only in GA',
    '%30',
    '%50',
  ];
  final colorBox = [
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.brown,
    Colors.brown,
  ];
  final imageAsset = [
    'brushBg.jpg',
    'whiteBrush.jpg',
    'mascara.jpg',
    'shampoo.jpg',
    'concealer.jpg',
    'liquid.jpg',
  ];
  final ontap = [
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Stack(
        children: [
          SizedBox(
            width: width,
            height: height * .7,
          ),
          Positioned(
            top: 70,
            left: 0,
            child: Container(
              width: width,
              height: height * .3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/cometicsBag.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('SHIK', style: TextStyle(fontSize: 36)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('Перейти к коллекции'),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView.builder(
              itemCount: productCategory.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HomePageCards(
                  productCategory: productCategory[index],
                  productCompany: productCompany[index],
                  productSalary: productSalary[index],
                  boxName: boxName[index],
                  colorBox: colorBox[index],
                  imagaAsset: imageAsset[index],
                  ontap: ontap[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
