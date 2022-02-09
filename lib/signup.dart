import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/clouds-01.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: size.height,
              child: Stack(
                children: [
                  Positioned(
                    height: MediaQuery.of(context).size.height / 0.6,
                    width: MediaQuery.of(context).size.width + 6,
                    top: MediaQuery.of(context).size.height * 0.2,
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 80),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                "Sign Up ",
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.38,
                                      decoration: BoxDecoration(
                                        // color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: SvgPicture.asset(
                                          'assets/apple.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: size.height * 0.07,
                                      width: size.width * 0.38,
                                      decoration: BoxDecoration(
                                        // color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: SvgPicture.asset(
                                          'assets/google.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: size.width * 0.8,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFF0F3FC),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                key: ValueKey('password'),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Email Id",
                                    style: TextStyle(
                                      color: Color(0xFF5973BA),
                                    )),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Row(
                                children: [
                                  Text(
                                    "I accept ",
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                    ),
                                  ),
                                  Text(
                                    "Privacy Policy + Terms of Use",
                                    style: TextStyle(
                                      color: Colors.blue.shade700,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Sign Up',
                                    style: TextStyle(fontSize: 20)),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFEBD1D),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  fixedSize: Size(
                                      size.height * 0.4, size.width * 0.15),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    right: -5,
                    top: 20,
                    child: Image.asset('assets/vegetables.png',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.33),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
