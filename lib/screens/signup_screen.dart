import 'package:flutter/material.dart';
import 'package:nexter/screens/home_screen.dart';

import '../widgets/form_widget.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF101D2C),
      
      body: SingleChildScrollView(
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
                  child: TextFieldInput(
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _nameController,
                    hintText: 'Name',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                  child: TextFieldInput(
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _emailController,
                    hintText: 'Email',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                  child: TextFieldInput(
                    isPass: true,
                    textInputType: TextInputType.text,
                    textEditingController: _passwordController,
                    hintText: 'Password',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                  child: TextFieldInput(

                    isPass: true,
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _confirmpasswordController,
                    hintText: 'Confirm Password',

                  )),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: const Text(
                      "SIGN IN",
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
    
    );
  }
}
