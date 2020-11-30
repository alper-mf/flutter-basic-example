import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:isinlasana_demo/model/jsonGet-loadData.dart';

//https://app.quicktype.io/ ile model oluşturulabilir.

class jsonGetMetodu extends StatefulWidget {
  @override
  _jsonGetMetoduState createState() => _jsonGetMetoduState();
}

class _jsonGetMetoduState extends State<jsonGetMetodu> {
  Future<JsonGetLoadData> apiCall() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');
    if (response.statusCode == 200) {
      return JsonGetLoadData.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Get Metodu'),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 40, right: 40),
          child: FutureBuilder<JsonGetLoadData>(
              future: apiCall(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: Center(
                      child: Text("User ID: ${snapshot.data.userId} \n" +
                          "Çekilen Title: ${snapshot.data.title} \n" +
                          "Çekilen Body: ${snapshot.data.body} \n"),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
