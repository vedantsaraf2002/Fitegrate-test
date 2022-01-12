import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Text(
            'Verify Email',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 35, 16, 8),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image(
                              image: AssetImage(
                                  'assets/Fitegrate/newest_logo.png'),
                              height: 166,
                              width: 147),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: TextField(
                            // controller: _nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                // child: Icon(
                                //   Icons.person_outline,
                                //   size: 28,
                                //   color: Colors.black87,
                                // ),
                              ),
                              hintText: 'Enter OTP',
                              hintStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: TextButton(
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        )),
                      ),
                    ]))));
  }
}
