import 'package:flutter/material.dart';
import 'package:shop_app/utils/intro_catalog.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderCatalog(
            imageAsset: 'sneakers.jpg',
            text: 'подарочная карта',
          ),
          const SizedBox(height: 30),
          Container(
            height: 270,
            width: 450,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color.fromARGB(132, 3, 217, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Скидка",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info_outline,
                          size: 50,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'бонусы',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            '123',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.grey.shade700, width: 1),
                        ),
                        child: const Center(child: Text('QR - КОД')),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
