import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile_cleaning_service/Home.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/customer_dash.dart';
import 'package:mobile_cleaning_service/login.dart';
import 'package:mobile_cleaning_service/view/performance.dart';

import 'domain/user/user_profile.dart';
import 'phnumber.dart';

class SignupPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SignupPage> {
  bool isSwitched = false;

  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController password = TextEditingController(text: "");
  final TextEditingController firstName = TextEditingController(text: "");
  final TextEditingController nid = TextEditingController(text: "");

  final TextEditingController lastName = TextEditingController(text: "");
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController address = TextEditingController(text: "");
  bool isCleaner = true;

  @override
  Widget build(BuildContext context) {
    // final _formKey = useMemoized(() => GlobalKey<FormState>());

    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    final Size size = MediaQuery.of(context).size;

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
        title: new Text("Create an account"),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isLoading != c.isLoading ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated ||
            (c.lat != p.lat && c.long != p.long),
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isLoading) {
            EasyLoading.show(status: 'loading...');
          } else if (state.isAuthenticated) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess('Registration Successful!');
            authBloc.add(UserPList());
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NumberScreen()),
            );
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(40),
              child: Form(
                // key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          inputFile(
                            label: "First name",
                            controlle: firstName,
                          ),
                          inputFile(label: "Last name", controlle: lastName),
                          inputFile(label: "Email", controlle: email),
                          inputFile(
                              label: "Phone Number", controlle: phoneNumber),
                          Row(
                            children: [
                              Text(
                                "Is Cleaner",
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                          if (isSwitched)
                            inputFile(label: "NID No", controlle: nid),
                          inputFile(
                              label: "Password",
                              obscureText: true,
                              controlle: password),
                          inputFile(
                              label: "Confirm Password ", obscureText: true),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            authBloc.add(SignupEvent(
                                email.text,
                                password.text,
                                UserData(
                                    firstName.text,
                                    lastName.text,
                                    address.text,
                                    phoneNumber.text,
                                    nid.text,
                                    isSwitched,
                                    0,
                                    0,
                                    0)));
                          },
                          color: Color(0xff32cb95),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account? "),
                          GestureDetector(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                          ),
                          // Text(
                          //   " Login",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.w600, fontSize: 16),
                          // ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false, controlle}) {
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
      Container(
        child: TextField(
          controller: controlle,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff32cb95),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.greenAccent, width: 1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            fillColor: Colors.greenAccent[10],
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
