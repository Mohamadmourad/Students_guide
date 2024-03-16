import 'package:flutter/material.dart';
import 'package:sutendts_guide/assets/classBox.dart';
import 'package:sutendts_guide/assets/Classes.dart';

class ClassInfo extends StatelessWidget {
   Class data;
   ClassInfo({Key? key, required this.data}); 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[900],
        title: Text(
          'Class Info',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                data.KnownAs,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text(
                data.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Divider(
              color: Colors.grey[700],
              height: 80,
              thickness: 0.5,
              indent: 32,
              endIndent: 32,
            ),
            Text(
              'Course Difficulty: ${data.difficulty} / 100',
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 35,),
            Text(
              'Description:',
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              '${data.description}',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50,),
            Text(
              'Best Instructors:',
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              '- ${data.bestDoctor}',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}