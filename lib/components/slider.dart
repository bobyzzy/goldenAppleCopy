import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/slider_components.dart';
import 'package:shop_app/screens/catalog_page.dart';
import 'package:shop_app/screens/catalog_page2.dart';
import 'package:shop_app/screens/catalog_page3.dart';

class MySlider extends StatelessWidget {
  MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      items: [
        SliderPage(
          labelString: "Фантастическая \n расподажа",
          subString: "только с 26 по 31 января",
          imagePath: "man.jpg",
          buttonName: "перейти по акции",
          color: Colors.black,
          ontap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const CatalogPae();
              },
            ));
          },
        ),
        SliderPage(
          labelString: "Парфюмы \n по низким ценам",
          subString: "покупайте только оригинальный продукции",
          imagePath: "parfums.jpg",
          buttonName: "перейти к каталогу",
          color: Colors.white,
          ontap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SecondCatalog(),
            ));
          },
        ),
        SliderPage(
          labelString: "Подарочная карта ",
          subString: "при покупки продукции найк \n дисконтная карта - 20%",
          imagePath: "sneakers.jpg",
          buttonName: "Перейти по акции",
          color: Colors.white,
          ontap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CatalogCard(),
            ));
          },
        ),
      ],
      options: CarouselOptions(
        height: height * 0.5,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: const Duration(seconds: 5),
        enableInfiniteScroll: true,
      ),
      carouselController: CarouselController(),
    );
  }
}
