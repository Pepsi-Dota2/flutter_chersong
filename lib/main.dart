import 'package:flutter/material.dart';
import 'package:flutter_chersong/src/features/articles/presentation/pages/home_pages.dart';

void main() => runApp(const MainPage());

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}
