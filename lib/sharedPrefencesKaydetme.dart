import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class sharedPrefencesKaydetme extends StatefulWidget {
  @override
  _sharedPrefencesKaydetmeState createState() =>
      _sharedPrefencesKaydetmeState();
}

class _sharedPrefencesKaydetmeState extends State<sharedPrefencesKaydetme> {
  TextEditingController _controller = TextEditingController();
  String dataa;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _veriOku().then((value) {
      if (dataa == null) {
        print("Gelen Veri Boş.[DEBUG]");
        dataa = "Gelen Veri Boş.";
      }
      setState(() {
        dataa = dataa;
      });
    });
  }

  _verileriKaydet() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("StringKey", _controller.text);
    return debugPrint(
        'Kaydet Çalışıyor. ${_controller.text} kaydedilen değer.');
  }

  Future<String> _veriOku() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dataa = prefs.getString("StringKey");
    debugPrint('Okuma Çalışıyor. ${dataa} okunan değer.');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPrefences Kaydetme"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80, left: 40, right: 40),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          TextField(
            controller: _controller,
            decoration:
                InputDecoration.collapsed(hintText: "Kaydedilecek Değer"),
          ),
          OutlineButton(
            child: Text("Kaydet"),
            onPressed: () {
              _verileriKaydet().then((value) {});
            },
          ),
          Text(
            dataa,
            style: TextStyle(fontSize: 20),
          ),
          OutlineButton(
            child: Text("Yükle"),
            onPressed: () {
              _veriOku();
              setState(() {});
            },
          ),
        ]),
      ),
    );
  }
}
