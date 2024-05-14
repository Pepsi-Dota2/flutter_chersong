import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutState();
}

class _AboutState extends State<AboutPage> {
  @override
  bool isClick = false;
  void initState() {
    isClick = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                isClick = !isClick;
                print(isClick);
              });
            },
            child: Text(
              "change colors",
              style: TextStyle(
                color: isClick ? Colors.amber : Colors.red,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink),
              child: Image.asset('assets/images/car.jpg'),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Hello world'),
            subtitle: Text('This is a simple'),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.delete),
                Icon(Icons.home),
              ],
            ),
          )
        ],
      ),
    );
  }
}
