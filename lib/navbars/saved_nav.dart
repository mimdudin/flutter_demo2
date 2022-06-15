import 'package:flutter/material.dart';

class SavedNav extends StatefulWidget {
  const SavedNav({Key? key}) : super(key: key);

  @override
  State<SavedNav> createState() => _SavedNavState();
}

class _SavedNavState extends State<SavedNav> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Saved Nav", style: TextStyle(color: Colors.white)),
    );
  }
}
