

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CustomAppBar(
          Icons.arrow_back_ios_outlined,
             Icons.search_outlined,
      ),
        ],
      ),
    );
  }
}

