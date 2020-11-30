import 'package:flutter/material.dart';

class normalListe extends StatefulWidget {
  @override
  _normalListeState createState() => _normalListeState();
}

class _normalListeState extends State<normalListe> {
  List<listem> _myList;
  String _myText = 'Şuan Kimse Seçili Değil.';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _myList = [
      listem("Alper", "0552-552-52-52"),
      listem("Buket", "0553-553-53-53"),
      listem("Tosbik", "0554-554-54-54"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Normal Liste Oluşturucu"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    _myText,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: _myList.length,
                    itemBuilder: (context, i) {
                      return Card(
                        elevation: 5,
                        child: ListTile(
                            leading: Icon(Icons.person),
                            title: Text(_myList[i].name),
                            subtitle: Text(_myList[i].tel),
                            trailing: CircleAvatar(
                              child: Text(i.toString()),
                            ),
                            onTap: () {
                              setState(() {
                                _myText = "${_myList[i].name} kişisi seçildi.";
                              });
                            }),
                      );
                    }),
              )
            ],
          )),
    );
  }
}

//İlk Önce Class Oluşturup, Neleri Ekleyeceğini
//Belirtiyorsun.
class listem {
  String name;
  String tel;
  listem(this.name, this.tel);
}
