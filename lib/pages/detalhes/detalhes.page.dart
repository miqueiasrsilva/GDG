import 'package:flutter/material.dart';
import 'package:tintin/shared/posts.dart';

class DetalhesPage extends StatefulWidget {
  final Posts post;

  const DetalhesPage({Key key, this.post}) : super(key: key);

  @override
  _DetalhesPageState createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.id.toString()),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            'https://www.fourjay.org/myphoto/f/14/143147_avatar-png.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50,
          ),
          Text(widget.post.title),
          SizedBox(
            height: 50,
          ),
          Text(widget.post.body),
        ],
      ),
    );
  }
}
