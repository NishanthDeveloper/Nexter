import 'package:flutter/material.dart';
import 'package:nexter/screens/login_page.dart';
import 'package:nexter/screens/signup_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC69963),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/hero.jpeg",
                  color: Color(0xFF101D2C).withOpacity(0.99),
                  colorBlendMode: BlendMode.modulate,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset(
                      "assets/logo.png",
                      width: width / 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 110),
                  child: Text(
                    "YOUR OWN HOME:",
                    style: TextStyle(
                        color: Color(0xFFC69963),
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 140),
                  child: Text(
                    "The Ultimate Personal\nFreedom",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),

              ],
            ),
            Stack(
              children: [

                Image.asset(
                  "assets/hero.jpeg",
                  color: Color(0xFF101D2C).withOpacity(0.99),
                  colorBlendMode: BlendMode.modulate,
                ),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));},
                  child: Padding(
                    padding:  EdgeInsets.only(left: 70, top:height /15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        width: 180,
                        height: 45,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                )),
                            color: Color(0xFFC69963)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, top: 10),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFFC69963),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Text(
                        "----------",
                        style: TextStyle(
                          color: Color(0xFFC69963),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Text(
                        "Seen on",
                        style: TextStyle(
                            color: Color(0xFFC69963),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Text(
                        "----------",
                        style: TextStyle(
                            color: Color(0xFFC69963),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: Image.asset(
                        "assets/logo-bbc.png",
                        width: width / 4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: Image.asset(
                        "assets/logo-bi.png",
                        width: width / 4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: Image.asset(
                        "assets/logo-forbes.png",
                        width: width / 4,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              color: Color(0xFF101D2C),
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Top 3 Realtors",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFC69963)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 4, top: 30),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/realtor-1.jpeg"),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 30),
                            child: Text(
                              "Erik Feinman",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 6),
                            child: Text(
                              "250+ House Sold",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 4, top: 30),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/realtor-2.jpeg"),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 30),
                            child: Text(
                              "Kim Brown",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 6),
                            child: Text(
                              "150+ House Sold",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width / 4, top: 30),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/realtor-3.jpeg"),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 30),
                            child: Text(
                              "Toby Ramsey",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 19, top: 6),
                            child: Text(
                              "100+ House Sold",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "World's Best Luxury Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 50,),
                Text(
                  "Only The Best Properties",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 50,),
                Text(
                  "Top 1% Realtors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 50,),
                Text(
                  "Secure Payment On Nexter",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
            Container(
              height: 75,
              width: double.infinity,
              color: Color(0xFFC69963),
            ),
          ],
        ),
      ),

    );
  }
}
