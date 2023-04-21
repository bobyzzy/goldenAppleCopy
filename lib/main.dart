import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_page.dart';
import 'package:shop_app/screens/my_tab_bar.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kanit-regular',
      ),
      home: const MyTab(),
    );
  }
}
