import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chersong/src/features/articles/presentation/pages/feed.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Instagram v"),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebookMessenger))
        ],
      ),
      body: Feed(),
    );
  }
}
