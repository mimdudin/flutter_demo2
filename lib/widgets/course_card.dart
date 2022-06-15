import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({Key? key, required this.course}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/pantai.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 3),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(course.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
              const SizedBox(height: 5),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text(course.description,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
