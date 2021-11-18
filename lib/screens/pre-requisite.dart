import 'package:flutter/material.dart';

class PreRequisite extends StatefulWidget {
  const PreRequisite({Key? key}) : super(key: key);

  @override
  _PreRequisiteState createState() => _PreRequisiteState();
}

class _PreRequisiteState extends State<PreRequisite> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Pre Requisite',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Random Text, will be changed soon :)',
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    color: Colors.grey[200],
                    height: size.height * 0.035,
                    width: size.width * 0.3,
                    child: Text(
                      'Waist (cms)',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          //backgroundColor: Colors.grey[200],

                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.035,
                  width: size.width * 0.15,
                  color: Colors.grey[200],
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    color: Colors.grey[200],
                    height: size.height * 0.035,
                    width: size.width * 0.3,
                    child: Text(
                      'Hips (cms)',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          //backgroundColor: Colors.grey[200],

                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.035,
                  width: size.width * 0.15,
                  color: Colors.grey[200],
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.black87,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'SpotJog');
                },
                child: Text(
                  'Start',
                  style: TextStyle(color: Colors.orange[300], fontSize: 15),
                  //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
