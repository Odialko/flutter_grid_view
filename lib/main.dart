import 'package:flutter/material.dart';
import 'package:flutter_grid/grid_view_builder.dart';
import 'package:flutter_grid/grid_view_count.dart';
import 'package:flutter_grid/grid_view_extend.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: Text('Flutter Grid', style: TextStyle(color: Colors.white30),),
        ),
      ),
//      body: GridViewCount(),
//      body: GridViewExtend(),
      body: GridViewBuilder(),
    );
  }
}
