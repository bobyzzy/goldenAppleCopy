import 'package:flutter/material.dart';

class SalePageDescription extends StatelessWidget {
  const SalePageDescription({
    super.key,
    required this.imageAsset,
    required this.labelText,
    required this.dateTime,
  });

  final String imageAsset;
  final String labelText;
  final String dateTime;

  void _shareContent() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _shareContent,
            icon: const Icon(Icons.ios_share_sharp),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dateTime,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                labelText,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('assets/img/saleBg.jpg'),
          ],
        ),
      ),
    );
  }
}
