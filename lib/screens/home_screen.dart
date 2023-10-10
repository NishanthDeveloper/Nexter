import 'package:flutter/material.dart';
import 'package:nexter/screens/landing_page.dart';
import 'package:nexter/screens/login_page.dart';

import '../service/auth_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _images = [
    "assets/house-1.jpeg",
    "assets/house-2.jpeg",
    "assets/house-3.jpeg",
    "assets/house-4.jpeg",
    "assets/house-5.jpeg",
    "assets/house-6.jpeg",
    "assets/gal-7.jpeg",
    "assets/gal-1.jpeg",
    "assets/gal-2.jpeg",
    "assets/gal-3.jpeg",
    "assets/gal-4.jpeg",
    "assets/gal-5.jpeg",
    "assets/gal-6.jpeg",
    "assets/gal-8.jpeg",
    "assets/gal-9.jpeg",
    "assets/gal-10.jpeg",
  ];
  List _place = [
    "assets/house-1.jpeg",
    "assets/house-2.jpeg",
    "assets/house-3.jpeg",
    "assets/house-4.jpeg",
    "assets/house-5.jpeg",
    "assets/house-6.jpeg"
  ];
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC69963),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()async {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Logout"),
                    content: Text("Are you sure you want to logout?"),
                    actions: [
                      IconButton(
                          onPressed: () {
                         Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.red,
                          )),
                      IconButton(
                          onPressed: () async {
                            authService.signOut().whenComplete(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LandingScreen()));
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            color: Colors.green,
                          ))
                    ],
                  );
                });
          }, icon: Icon(Icons.logout,color: Colors.white,))
        ],

      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 15,
                    shadowColor: Colors.black,
                    color: Colors.white70,

                    child: SizedBox(
                      height: 500,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Image.asset("${_images[index]}"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height/4.5,left: width/5.9),
                            child: Container(
                              color: Color(0xFF101D2C),
                              height: 50,
                              width: 200,
                              child: Center(
                                child: Text(
                                  "Modern Glass Villa",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 300),
                                    child: Text(
                                      "USA",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 300),
                                    child: Text(
                                      "5 Rooms",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),
                                    ),
                                  ),

                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "325 m2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "\$1,200,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 430),
                            child: Container(
                              height: 75,
                              width: double.infinity,
                              color: Color(0xFFC69963),
                              child: Center(
                                child: Text(
                                  "CONTACT RETAILER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ), //Padding
                    ), //SizedBox
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
