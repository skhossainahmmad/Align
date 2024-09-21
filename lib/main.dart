import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Align",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Align",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w700, color: Colors.amber),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.amber,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.lightBlue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.amber,
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 12),
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
