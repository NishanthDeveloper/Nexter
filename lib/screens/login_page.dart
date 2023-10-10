import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nexter/helper/helper_function.dart';
import 'package:nexter/screens/home_screen.dart';
import 'package:nexter/service/auth_service.dart';
import 'package:nexter/widgets/form_widget.dart';
import 'package:nexter/widgets/text_input.dart';

import '../service/database_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey = GlobalKey<FormState>();
  String email ="";
  String password = "";
  AuthService authService = AuthService();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF101D2C),

      body:_isLoading ? Center(child: CircularProgressIndicator(color: Colors.cyan,),) : SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    "assets/logo.png",
                    width: width / 2,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Center(
                      child:    TextFormField(

                        decoration:textInputDecoration.copyWith(
                          filled: true,

                          hintText: "Email"

                        ),
                        onChanged: (val){
                          setState(() {
                            email = val;
                            print(email);
                          });
                        },
                        validator: (value){
                          return RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value!) ? null : "Please enter the valid email";
                        },
                      ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Center(
                      child:   TextFormField(
                        obscureText: true,
                        decoration:textInputDecoration.copyWith(
                            hintText: "Password",
                          filled: true
                        ),
                        validator: (val){
                          if(val!.length < 6){
                            return "Password must be at least 6 characters ";
                          }
                          else{
                            return null;
                          }
                        },
                        onChanged: (val){
                          setState(() {
                            password = val;
                            print(password);
                          });
                        },
                      ),),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){login();},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        width: 200,
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
              ],
            ),
          ),
        ),
      ),

    );

  }

  void login() async{
    if(_formkey.currentState!.validate()){
      setState(() {
        _isLoading = true;
      });
      await authService.loginWithEmailandPassword( email, password).then((value)async{
        if(value == true){
          QuerySnapshot snapshot =     await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid).gettingUserData(email);
          await HelperFunction.saveUserLoggedInStatus(true);
          await HelperFunction.saveUserEmailSF(email);
          await HelperFunction.saveUserNameSF(snapshot.docs[0]['fullName']);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

        }else{
          showSnackbar(context, value, Colors.red);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}
