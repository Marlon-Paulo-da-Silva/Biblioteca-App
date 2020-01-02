import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:librarybloc/home/book_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    "Android",
    "Java",
    "História",
    "Ciencias",
    "Flutter"
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 19),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                    ),
                    child: Text(
                      "Biblioteca",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Recomendados",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext c, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: GestureDetector(
                        onTap: () {
                          _selectedIndex = index;
                          setState(() {});
                        },
                        child: Chip(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          backgroundColor: index == _selectedIndex
                              ? Colors.blue
                              : Colors.grey[200],
                          label: Text(
                            categories.elementAt(index),
                            style: TextStyle(
                              color: index == _selectedIndex
                                  ? Colors.white
                                  : Colors.grey[500],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BookWidget();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
