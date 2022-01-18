import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Report extends StatefulWidget {
  const Report({ Key? key }) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.orange[400],
        title: const Text("Report"),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        
        Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              const Text("Body Mass Index", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.9,
                center: const Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Waist-to-Hip Ratio", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.8,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        Padding(
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Balance (Eyes Open)", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.7,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("70.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        
        Padding(
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Balance (Eyes Closed)", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black,),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.6,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("60.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.amber,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        
        Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Flexibilty", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.5,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("50.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.amber,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        
        Padding(
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Push Ups", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.4,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("40.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.amber,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        
        Padding(
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Squats", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.3,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("30.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.red,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        
        Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("Partial Curl Ups", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.2,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("20.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.red,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),
        
        Padding(
         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const Text("12 Min Walk Test", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black,),),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width*0.45,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 0.1,
               // leading: const Text("Body Mass Index", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                center: const Text("10.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.red,
                backgroundColor: Colors.grey,
              ),
          ],
        ),
        ),

        
        
          ],
        ),
      ),
    );
  }
}