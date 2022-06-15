import 'package:flutter/material.dart';

class CategoriesNav extends StatefulWidget {
  const CategoriesNav({Key? key}) : super(key: key);

  @override
  State<CategoriesNav> createState() => _CategoriesNavState();
}

class _CategoriesNavState extends State<CategoriesNav> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Categories Nav", style: TextStyle(color: Colors.white)),
    );
  }
}
