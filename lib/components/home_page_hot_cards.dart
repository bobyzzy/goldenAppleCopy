import 'package:flutter/material.dart';
import 'package:shop_app/components/show_all_button.dart';

import 'home_page_cards_components.dart';

class HomePageHotScroll extends StatelessWidget {
  final productCategory = [
    "меняющая цвет пенка для душа",
    "Dior-calogne парфюм",
    'Косметика',
    "Новая коллекция летней одежды ",
  ];
  final productCompany = [
    "Darling* from party",
    "Dior",
    "Okolo beam body polish",
    'Pull & Bear',
  ];
  final productSalary = [
    '50',
    '250',
    '70',
    '169',
    '120',
  ];

  final boxName = [
    'new',
    'hit',
    '%30',
    'only in GA',
    '%30',
  ];
  final imageAset = [
    "skin.jpg",
    'bottle-parfum.jpg',
    'cosmetics.jpg',
    'pullbear.jpg',
  ];

  final colorBox = [
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.blue,
    Colors.brown,
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
      height: 350,
      child: ListView.builder(
        itemCount: productCategory.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomePageCards(
            productCategory: productCategory[index],
            productCompany: productCompany[index],
            productSalary: productSalary[index],
            boxName: boxName[index],
            imagaAsset: imageAset[index],
            colorBox: colorBox[index],
            ontap: ontap[index],
          );
        },
      ),
    );
  }
}
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           HomePageCards(
//             productCategory: "меняющая цвет пенка для душа",
//             colorBox: Colors.red,
//             productCompany: "Darling* from party",
//             productSalary: '41.06',
//             boxName: "hot",
//             imagaAsset: "skin.jpg",
//             ontap: () {},
//           ),
//           const SizedBox(width: 20),
//           HomePageCards(
//             productCategory: "Dior-calogne парфюм",
//             colorBox: Colors.green,
//             productCompany: "Dior",
//             productSalary: '129.99',
//             boxName: "30%",
//             imagaAsset: 'bottle-parfum.jpg',
//             ontap: () {},
//           ),
//           const SizedBox(width: 20),
//           HomePageCards(
//             boxName: "only in GA",
//             colorBox: Colors.blue,
//             imagaAsset: 'cosmetics.jpg',
//             productCategory: 'Косметика',
//             productCompany: "Okolo beam body polish",
//             productSalary: '117',
//             ontap: () {},
//           ),
//           const SizedBox(width: 20),
//           HomePageCards(
//             productCategory: "Новая коллекция летней одежды ",
//             colorBox: Colors.green,
//             productCompany: 'Pull & Bear',
//             productSalary: '66.99',
//             boxName: "new",
//             imagaAsset: 'pullbear.jpg',
//             ontap: () {},
//           ),
//           const SizedBox(width: 40),
//           ShowAllButton(
//             ontap: () {},
//           ),
//           const SizedBox(width: 40),
//         ],
//       ),
//     );
//   }
// }
