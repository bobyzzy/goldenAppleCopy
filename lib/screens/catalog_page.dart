import 'package:flutter/material.dart';
import 'package:shop_app/components/home_page_cards_components.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/utils/intro_catalog.dart';

class CatalogPae extends StatelessWidget {
  const CatalogPae({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          const HeaderCatalog(imageAsset: 'zinaBg.jpg', text: 'новинка'),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 900,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 400,
                mainAxisSpacing: 20,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 350,
                  child: HomePageCards(
                      productCategory: 'Парфюм от Dior',
                      productCompany: 'Dior',
                      productSalary: '260',
                      boxName: 'new',
                      imagaAsset: 'black-bottle.jpg',
                      ontap: () {},
                      colorBox: Colors.blue),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
