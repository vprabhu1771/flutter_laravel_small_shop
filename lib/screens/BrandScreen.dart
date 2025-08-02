import 'package:flutter/material.dart';

class BrandScreen extends StatefulWidget {
  final String title;
  const BrandScreen({super.key,required this.title});

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(child: Text(widget.title),),
    );
  }
}
