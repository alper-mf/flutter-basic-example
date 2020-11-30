import 'package:flutter/material.dart';
import 'package:isinlasana_demo/post.dart';

class getMetodu extends StatelessWidget {
  String gelenText;
  getMetodu({Key key, @required this.gelenText}) : super(key: key);

  void _gelenTextKontroller(BuildContext context) {
    if (gelenText == '') {
      gelenText = 'Gelen Yok.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Metodu:" + gelenText),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80, left: 40, right: 40),
        child: Column(children: [
          Text(gelenText),
        ]),
      ),
    );
  }
}
