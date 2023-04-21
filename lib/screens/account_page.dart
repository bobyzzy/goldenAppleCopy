import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final titleList = [
    'мои покупки',
    'избранное',
    'подписки и уведомления',
    'купить подарочную карту',
    'доставка и оплта',
    'документы',
    'вакансии',
    'Беларусь',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(radius: 30),
                      SizedBox(width: 30),
                      Text(
                        'Bobur\n Biyodullayev',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.drag_handle_rounded))
                ],
              ),
            ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8),
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
                            border: Border.all(
                                color: Colors.grey.shade700, width: 1),
                          ),
                          child: const Center(child: Text('QR - КОД')),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Мой кабинет',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: titleList.length,
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(titleList[index]),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
