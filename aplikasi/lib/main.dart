import 'package:flutter/material.dart';
import 'package:flutter_application_1/font_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Tanie", style: mainHeader),
              elevation: 0,
              bottom: PreferredSize(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 0, bottom: 16.0, right: 0),
                    child: Text("Teman bertanimu"),
                  ),
                ),
                preferredSize: Size.fromHeight(16),
              ),
              backgroundColor: Colors.green,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                )
              ],
            ),
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(12))),
                child: Align(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, top: 6.0, bottom: 16.0, right: 16.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(8),
                                  top: Radius.circular(8))),
                          labelText: "Search....",
                          suffixIcon: Icon(Icons.search_outlined),
                          fillColor: Colors.white,
                          filled: true
                          // fillColor: Colors.white
                          ),
                    ),
                  ),
                ),
              ),
            )));
  }
}
