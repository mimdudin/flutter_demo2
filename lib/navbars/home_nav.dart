import 'package:flutter/material.dart';

import '../widgets/course_card.dart';
import '../models/course.dart';
import '../models/educator.dart';
import '../widgets/educator_card.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  var courses = [];
  var _selectedTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    courses = [
      Course(1, "Virtual Reality", 'assets/pantai.jpeg', "Satwik Pachino"),
      Course(2, "Virtual Reality", 'assets/pantai.jpeg', "Satwik Pachino"),
      Course(3, "Virtual Reality", 'assets/pantai.jpeg', "Satwik Pachino"),
      Course(4, "Virtual Reality", 'assets/pantai.jpeg', "Satwik Pachino"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          _buildWelcomeText(),
          SizedBox(height: 10),
          _buildSearch(),
          SizedBox(height: 30),
          _buildCarouselTab(),
          SizedBox(height: 30),
          _buildTopEducators(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildWelcomeText() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Hello Satwik",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26)),
              SizedBox(height: 4),
              Text(
                "What are you learning today?",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/pantai.jpeg',
                    fit: BoxFit.cover, height: 55, width: 55)),
          )
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 5,
        ),
        decoration: BoxDecoration(
            color: Colors.white12,
            // border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child:
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            TextFormField(
          autofocus: false,
          // controller: ,
          style: TextStyle(color: Colors.white),
          cursorColor: Color(0xFF1B2430),
          decoration: InputDecoration(
              fillColor: Colors.red,
              focusColor: Colors.green,
              hintText: "Search courses, Educators...",
              hintStyle: TextStyle(color: Colors.white, fontSize: 13),
              suffixIcon: Container(
                child: Icon(Icons.search, color: Colors.white),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none),
        ));
  }

  Widget _buildCarouselTab() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF1B2430), Color(0xFF51557E)],
            begin: const FractionalOffset(0.0, 0.6),
            end: const FractionalOffset(0.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      height: 250,
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTab = 0;
                    });
                  },
                  child: Column(
                    children: [
                      _selectedTab == 1
                          ? SizedBox()
                          : Container(
                              height: 3,
                              width: 85,
                              color: Colors.white,
                            ),
                      SizedBox(height: 15),
                      Text(
                        "My Courses",
                        style: TextStyle(
                            color:
                                _selectedTab == 0 ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  )),
              SizedBox(width: 50),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTab = 1;
                    });
                  },
                  child: Column(
                    children: [
                      _selectedTab == 0
                          ? SizedBox()
                          : Container(
                              height: 3,
                              width: 62,
                              color: Colors.white,
                            ),
                      SizedBox(height: 15),
                      Text(
                        "Trending",
                        style: TextStyle(
                            color:
                                _selectedTab == 1 ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ))
            ]),
          ),
          SizedBox(height: 20),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: _selectedTab == 1 ? 1 : courses.length,
            itemBuilder: (c, i) {
              Course course = courses[i];
              return CourseCard(course: course);
            },
          ))
        ],
      ),
    );
  }

  Widget _buildTopEducators() {
    return Container(
      height: 218,
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "Top Educators",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
          SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            itemBuilder: (c, i) {
              Course educator = courses[i];
              return EducatorCard(educator: educator);
            },
          ))
        ],
      ),
    );
  }
}
