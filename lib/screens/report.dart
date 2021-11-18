import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({ Key? key }) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height:60),
            Center(child: Text('This report will be generated soon', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}