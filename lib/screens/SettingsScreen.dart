import 'package:flutter/material.dart';
import 'package:flutter_laravel_small_shop/provider/UiProvider.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<UiProvider>(
        builder: (context, UiProvider notifier, child){
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text("Dark Theme"),
                trailing: Switch(
                    onChanged: (value){ notifier.changeTheme();},
                    value: notifier.isDark),
              )
            ],
          );
        },
      ),
    );
  }
}
