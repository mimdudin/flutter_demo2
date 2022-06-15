import 'package:flutter/material.dart';
import './navbars/home_nav.dart';
import './navbars/saved_nav.dart';
import './navbars/categories_nav.dart';
import './navbars/settings_nav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _indexPage = 0;
  var pageOption = [];

  @override
  void initState() {
    super.initState();
    pageOption = [
      HomeNav(),
      CategoriesNav(),
      SavedNav(),
      SettingsNav(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2430),
      body: pageOption[_indexPage],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: Color(0xFF1B2430),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: _indexPage,
            items: const [
              BottomNavigationBarItem(
                  icon: SizedBox(height: 30, child: Icon(Icons.home)),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SizedBox(height: 30, child: Icon(Icons.menu_sharp)),
                  label: 'Categories'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 30,
                    child: Icon(Icons.book),
                  ),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 30,
                    child: Icon(Icons.settings),
                  ),
                  label: 'Settings'),
            ],
            onTap: (value) {
              setState(() {
                _indexPage = value;
              });
            }),
      ),
    );
  }
}
