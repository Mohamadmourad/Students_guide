import 'package:flutter/material.dart';
import 'package:sutendts_guide/assets/classBox.dart';
import 'package:sutendts_guide/assets/Classes.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(
          'Students Guide',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: classes.length, 
          itemBuilder: (context, index) { 
            return Column(
              children: [
                ClassBox(cla: classes[index]),
              ],
            );
          },
        ),
      ),
    );
  }
}

