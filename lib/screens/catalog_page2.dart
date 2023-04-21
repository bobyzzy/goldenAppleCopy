import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_cards_components.dart';
import 'package:shop_app/utils/intro_catalog.dart';

class SecondCatalog extends StatelessWidget {
  const SecondCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderCatalog(
                imageAsset: 'saleBg.jpg', text: 'сикдки до -40%'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort_sharp,
                      size: 30,
                    ),
                  ),
                  Text(
                    '1233 товаров',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.grid_on_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 400, crossAxisCount: 2),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return HomePageCards(
                      productCategory: 'Парфюм от Dior',
                      productCompany: 'Dior',
                      productSalary: '260',
                      boxName: 'new',
                      imagaAsset: 'black-bottle.jpg',
                      ontap: () {},
                      colorBox: Colors.blue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
