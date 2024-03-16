import 'package:flutter/material.dart';
import 'package:sutendts_guide/assets/Classes.dart';

class ClassBox extends StatelessWidget {
  final Class cla;
  const ClassBox({super.key, required this.cla});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30), 
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/classInfo',arguments: cla);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          alignment: Alignment.centerLeft, 
          backgroundColor: Colors.grey[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(double.infinity, 80),
        ),
        child: Row(
          children: [
            Text(
              cla.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 10,),
            Text(
              '(${cla.KnownAs})',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
