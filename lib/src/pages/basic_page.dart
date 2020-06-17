import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final _titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitleSection(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createText() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          textAlign: TextAlign.justify,
        ));
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space horizontal
      children: <Widget>[
        _action("Call", Icons.call),
        _action("Navigation", Icons.near_me),
        _action("Share", Icons.share),
      ],
    );
  }

  Widget _action(String name, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(height: 5.0),
        Text(
          name,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/58/85/e5/5885e5aecab02417d53a5d9da2c3d38c.png'),
    );
  }

  Widget _createTitleSection() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // cross is for vertical
                children: <Widget>[
                  Text(
                    'Some text',
                    style: _titleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Some other text',
                    style: _subtitleStyle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
