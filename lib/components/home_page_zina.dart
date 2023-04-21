import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_cards_components.dart';

class HomePageStackZina extends StatelessWidget {
  HomePageStackZina({super.key});

  final productCategory = [
    "Масло для лица",
    "Средство для снятие\n макияжа с глаз и губ",
    "тушь для ресниц",
    "гель для душа и шампунь",
    "консилер",
    "кремовые румяна",
  ];
  final productCompany = [
    '3INA the oil drops energy',
    '3INA the remover',
    'SHIK extra volume eyelash mascara',
    'SHIK perfect concealer',
    'SHIK perfect concealer',
    'SHIK perfect liquid blush',
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
  final imageAsset = [
    'zinaWhit.jpg',
    'ZinaCardtwo.jpg',
    'zinaCard3.jpg',
    'shampoo.jpg',
    'concealer.jpg',
    'liquid.jpg',
  ];
  final colorBox = [
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.brown,
    Colors.brown,
  ];
  final ontap = [
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
  ];
  // child: SingleChildScrollView(
  //   padding: const EdgeInsets.symmetric(horizontal: 20),
  //   scrollDirection: Axis.horizontal,
  //   child: Row(
  //     children: [
  //       HomePageCards(
  //         boxName: "40%",
  //         colorBox: Colors.grey,
  //         imagaAsset: 'zinaWhit.jpg',
  //         productCategory: "Масло для лица",
  //         productCompany: '3INA the oil drops energy',
  //         productSalary: '22,39',
  //         ontap: null,
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageCards(
  //         colorBox: Colors.grey,
  //         boxName: "40%",
  //         imagaAsset: 'ZinaCardtwo.jpg',
  //         productCategory:
  //             "Средство для снятие\n макияжа с глаз и губ",
  //         productCompany: '3INA the remover',
  //         productSalary: '29,11',
  //         ontap: null,
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageCards(
  //         colorBox: Colors.grey,
  //         boxName: "40%",
  //         imagaAsset: 'zinaCard3.jpg',
  //         productCategory: "тушь для ресниц",
  //         productCompany: 'SHIK extra volume eyelash mascara',
  //         productSalary: '32.00',
  //         ontap: null,
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageCards(
  //         colorBox: Colors.indigo,
  //         boxName: "only in GA",
  //         imagaAsset: 'shampoo.jpg',
  //         productCategory: "гель для душа и шампунь",
  //         productCompany: 'SHIK perfect concealer',
  //         productSalary: '59,87',
  //         ontap: null,
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageCards(
  //         colorBox: Colors.indigo,
  //         boxName: "only in GA",
  //         imagaAsset: 'concealer.jpg',
  //         productCategory: "консилер",
  //         productCompany: 'SHIK perfect concealer',
  //         productSalary: '60,99',
  //         ontap: null,
  //       ),
  //       const SizedBox(width: 20),
  //       HomePageCards(
  //         boxName: "new",
  //         colorBox: Colors.indigo,
  //         imagaAsset: 'liquid.jpg',
  //         productCategory: "кремовые румяна",
  //         productCompany: 'SHIK perfect liquid blush',
  //         productSalary: '12123',
  //         ontap: null,
  //       ),
  //     ],
  //   ),
  // ),

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
                  image: AssetImage('assets/img/zinaWhit.jpg'),
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
                const Text('3INA',
                    style: TextStyle(
                      fontSize: 36,
                    )),
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
              scrollDirection: Axis.horizontal,
              itemCount: productCategory.length,
              itemBuilder: (context, index) {
                return HomePageCards(
                  productCategory: productCategory[index],
                  productCompany: productCompany[index],
                  productSalary: productSalary[index],
                  boxName: boxName[index],
                  imagaAsset: imageAsset[index],
                  colorBox: colorBox[index],
                  ontap: ontap[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
