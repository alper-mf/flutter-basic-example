import 'package:flutter/material.dart';
import 'package:isinlasana_demo/json-get.dart';
import 'package:isinlasana_demo/list-normal.dart';
import 'package:isinlasana_demo/post.dart';
import 'package:isinlasana_demo/sharedPrefencesKaydetme.dart';

class NavigateYontemi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 30),
            child: Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostMetodu()));
                    },
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.post_add),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Post Metodu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Normal ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // inkwell color
                              child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.post_add),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Get Metodu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Normal ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // inkwell color
                              child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.alternate_email),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Post Metodu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "JSON ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => jsonGetMetodu()));
                    },
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.alternate_email),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Get Metodu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "JSON ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // inkwell color
                              child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => normalListe()));
                    },
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.list),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Liste Görüntüleme ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Normal ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // inkwell color
                              child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.list),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Liste Görüntüleme ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "JSON",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sharedPrefencesKaydetme()));
                    },
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.save),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Shared Prefences ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Kaydetme ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // inkwell color
                              child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.save),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Local Database ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Kaydetme",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.view_sidebar),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "SideBar Menu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Soldan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.view_sidebar),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "SideBar Menu ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Alttan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.animation),
                            iconSize: 32,
                            onPressed: null),
                        Text(
                          "Animasyon ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Geçişler ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
