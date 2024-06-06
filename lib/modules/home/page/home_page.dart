import 'package:e_commerce/shared/widgets/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      requiredStack: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(color: Colors.black),
          ),
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Container(
            height: 40,
            width: 30,
            decoration: BoxDecoration(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
