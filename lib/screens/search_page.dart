import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final searchSubPages = [
    'Каталог',
    'бренды',
    'новинки',
    'акции',
    'клиентские лни',
    'подарочные карты',
    'скидки до -40%',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'ПОИСК',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.gps_fixed_outlined),
            title: const Text('минск'),
            trailing: const Icon(Icons.keyboard_arrow_down_outlined),
            onTap: () {},
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchSubPages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  title: Text(
                    searchSubPages[index],
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
