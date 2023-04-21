import 'package:flutter/cupertino.dart';

import 'home_page_circle_component.dart';

class HomePageCircle extends StatelessWidget {
  final List<String> circleImage = [
    'bottle.png',
    'sale.png',
    'white-hody.png',
    'new.png',
    'dash.jpg',
    'live.png',
    "cap.jpg",
  ];
  final List circleSubLabel = [
    'RAD',
    'акции',
    "Bershka",
    'новинки',
    'косметика',
    "live",
    "GAP",
  ];
  HomePageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: circleImage.length,
        itemBuilder: (context, index) {
          return CircleComponent(
              imageAsset: circleImage[index], subLabel: circleSubLabel[index]);
        },
      ),
    );
  }
}
//     return SizedBox(
//       height: 120,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: const [
//           SizedBox(width: 20),
//           CircleComponent(
//             imageAsset: 'bottle.png',
//             subLabel: "RAD",
//           ),
//           SizedBox(width: 20),
//           CircleComponent(
//             imageAsset: 'sale.png',
//             subLabel: 'акции',
//           ),
//           SizedBox(width: 20),
//           CircleComponent(imageAsset: 'white-hody.png', subLabel: "Bershka"),
//           SizedBox(width: 20),
//           CircleComponent(
//             imageAsset: 'new.png',
//             subLabel: 'новинки',
//           ),
//           SizedBox(width: 20),
//           CircleComponent(imageAsset: 'dash.jpg', subLabel: 'косметика'),
//           SizedBox(width: 20),
//           CircleComponent(
//             imageAsset: 'live.png',
//             subLabel: "live",
//           ),
//           SizedBox(width: 20),
//           CircleComponent(imageAsset: "cap.jpg", subLabel: "GAP"),
//           SizedBox(width: 20),
//         ],
//       ),
//     );
//   }
// }
