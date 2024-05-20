import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chersong/src/features/articles/domain/models/image.models.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final List<TextInfo> list = listInfo;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(list[index].avatar),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        list[index].text,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: Image.network(
                list[index].img,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.heart),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    const Icon(FontAwesomeIcons.comment),
                    const SizedBox(width: 16.0),
                    const Icon(FontAwesomeIcons.paperPlane)
                  ],
                ),
                const Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ],
        );
      },
    );
  }
}
