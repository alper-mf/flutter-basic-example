import 'package:flutter/material.dart';
import 'package:isinlasana_demo/get.dart';

class DataGonder {
  String deger;
  DataGonder(this.deger);
}

class PostMetodu extends StatefulWidget {
  @override
  _PostMetoduState createState() => _PostMetoduState();
}

class _PostMetoduState extends State<PostMetodu> {
  final myController = TextEditingController();
  String text = '';

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Yöntemi"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 10,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: 'Post Edilecek Değer',
                    hintStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                  ),
                ),
              ),
            ),
            /******/
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (myController.text == '') {
                    print("Form Boş!");
                    return text = "Form Boş!";
                  } else {
                    text = myController.text;
                  }
                });
              },
              child: Text("Göster"),
            ),
            /******/
            SizedBox(height: 80),
            /******/
            Row(
              children: [
                Text(
                  'Gönderilen Değer:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(' $text',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
              ],
            ),
            /******/
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            getMetodu(gelenText: myController.text)));
              },
              child: Text("Değeri Başka Sayfaya Gönder"),
            ),
          ],
        ),
      ),
    );
  }
}
