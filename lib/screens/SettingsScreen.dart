import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final String title;
  const SettingsScreen({super.key,required this.title});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(child: Text(widget.title),),
    );
  }
}
