import 'package:flutter/material.dart';

class SettingsNav extends StatefulWidget {
  const SettingsNav({Key? key}) : super(key: key);

  @override
  State<SettingsNav> createState() => _SettingsNavState();
}

class _SettingsNavState extends State<SettingsNav> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings Nav", style: TextStyle(color: Colors.white)),
    );
  }
}
