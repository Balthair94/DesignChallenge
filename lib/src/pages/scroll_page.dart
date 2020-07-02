import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _pageOne(),
            _pageTwo(),
          ],
        ),
      ),
    );
  }

  Widget _pageOne() {
    return Stack(
      children: <Widget>[
        _colorFond(),
        _imgFond(),
        _someTexts(),
      ],
    );
  }

  Widget _imgFond() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img_01.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _colorFond() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _someTexts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text("11º", style: textStyle,),
          Text("Wednesday", style: textStyle,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 100.0,)
        ],
      ),
    );
  }

  Widget _pageTwo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.red,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text("Welcome", style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
