import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/Home.dart';
import 'package:mobile_cleaning_service/customer_dash.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/signup.dart';
import 'package:mobile_cleaning_service/view/performance.dart';
import 'package:mobile_cleaning_service/view/resetPasswordf.dart';

import 'application/auth/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController password = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xff32cb95),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: new Text("Login"),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isLoading != c.isLoading ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated,
        listener: (context, state) {
          if (state.isAuthenticated && state.userData.isCleaner == false) {
            Logger().i(state.userData.isCleaner);
            AuthBloc(context.read<IAuthProvider>())
              ..add(const AuthEvent.getUserList());
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CustomerDash(state.userDataList)),
            );
          } else if (state.isAuthenticated &&
              state.userData.isCleaner == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Performance(state.userData)),
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/login.png"))),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            filled: true,
                            labelText: "Email",
                            hintText: "Enter your Email here",
                            focusColor: Color(0xff32cb95),
                            fillColor: Colors.greenAccent[10],
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            labelText: "Password",
                            hintText: "Enter your Password here",
                            fillColor: Colors.greenAccent[10],
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      ],
                    ),
                  ),
                        SizedBox(
        height: 10,
      ),              
              GestureDetector(
                child: Text(
                  "Forgot Password?", 
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPasswordF()),
                  );
                },
              ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Container(
                      padding: EdgeInsets.only(top: 0, left: 3),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          authBloc.add(LoginEvent(email.text, password.text));
                        },
                        color: Color(0xff32cb95),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account? "),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                  ), // Text(
                  //   " Sign up",

                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
