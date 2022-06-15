import 'package:flutter/material.dart';

import '../models/course.dart';

class EducatorCard extends StatelessWidget {
  final Course educator;
  const EducatorCard({Key? key, required this.educator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      margin: EdgeInsets.all(4),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/pantai.jpeg',
                        fit: BoxFit.cover, height: 70, width: 70)),
              ),
              const SizedBox(height: 3),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(educator.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              const SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(educator.description,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                      ))),
              const SizedBox(height: 8),
              Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
        ),
      ),
    );
  }
}
