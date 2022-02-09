import 'package:daily_ui_3/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomeScreen(),
    home: SignUpScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/clouds-01.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height,
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/clouds-01.png"),
              //         fit: BoxFit.contain)),
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width + 6,
                  top: MediaQuery.of(context).size.height * 0.5,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55)),
                      child: Column(
                        children: [
                          SizedBox(height: 120),
                          Text(
                            "Access the biggest ",
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Text(
                            "online farmers' market",
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          SizedBox(height: 25),
                          ElevatedButton(
                            onPressed: () {},
                            child:
                                Text('Sign Up', style: TextStyle(fontSize: 20)),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFEBD1D),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              fixedSize:
                                  Size(size.height * 0.4, size.width * 0.15),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Positioned(
                  right: -15,
                  top: 160,
                  child: Image.asset('assets/vegetables.png',
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * 0.45),
                ),
                Positioned(
                  top: 60,
                  left: size.width / 2.3,
                  child: Column(
                    children: [
                      Icon(Icons.shopping_basket,
                          color: Colors.white, size: 50),
                      Text("Local",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
