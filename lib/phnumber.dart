import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_cleaning_service/infrastructure/auth/firebase_auth_provider.dart';
import 'package:mobile_cleaning_service/login.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class NumberScreen extends StatefulWidget {
  @override
  _NumberScreenstate createState() => _NumberScreenstate();
}

class _NumberScreenstate extends State<NumberScreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;
  bool showLoading = false;
  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });
    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });
      if (authCredential?.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      final x = e.message;
      _scaffoldKey.currentState!
          // ignore: deprecated_member_use
          .showSnackBar(SnackBar(content: Text("$x")));
    }
  }

  getMobileFormWidget(context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              // Spacer(),
              Image.asset(
                'assets/msg.png',
                height: MediaQuery.of(context).size.height / 3,
                // width: MediaQuery.of(context).size.width / 4,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                  labelText: "Phone Number",
                  filled: true,
                  fillColor: Colors.greenAccent[20],
                  focusColor: Color(0xff32cb95),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              FlatButton(
                onPressed: () async {
                  setState(() {
                    showLoading = true;
                  });
                  await _auth.verifyPhoneNumber(
                      phoneNumber: phoneController.text,
                      verificationCompleted: (phoneAuthCredential) async {
                        setState(() {
                          showLoading = false;
                        });
                        //signInWithPhoneAuthCredential(phoneAuthCredential);
                      },
                      verificationFailed: (verificationFailed) async {
                        setState(() {
                          showLoading = false;
                        });
                        final y = verificationFailed.message;
                        _scaffoldKey.currentState!
                            .showSnackBar(SnackBar(content: Text("$y")));
                      },
                      codeSent: (verificationId, resendongToken) async {
                        setState(() {
                          showLoading = false;
                          currentState =
                              MobileVerificationState.SHOW_OTP_FORM_STATE;
                          this.verificationId = verificationId;
                        });
                      },
                      codeAutoRetrievalTimeout: (verificationId) async {});
                },
                child: Text("Send OTP"),
                color: Color(0xff32cb95),
                textColor: Colors.white,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getOtpFormWidget(context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            //Spacer(),
            Image.asset(
              'assets/code.png',
              height: MediaQuery.of(context).size.height / 3,
            ),
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: "Enter The OTP",
                labelText: "OTP",
                filled: true,
                fillColor: Colors.greenAccent[20],
                focusColor: Color(0xff32cb95),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FlatButton(
              onPressed: () async {
                // final AuthCredential credential = PhoneAuthProvider.credential(
                //   verificationId: verificationId,
                //   smsCode: otpController.text,
                // );
                // var currentUser;
                // currentUser.linkWithCredential(credential);
                //await FirebaseAuth.instance.currentUser!.updateEmail(PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otpController.text));
                PhoneAuthCredential phoneAuthCredential =
                    (PhoneAuthProvider.credential(
                        verificationId: verificationId,
                        smsCode: otpController.text));
                signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              child: Text("Verify"),
              color: Color(0xff32cb95),
              textColor: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
          ],
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Mobile Number'),
      ),
      body: Container(
          child: showLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                  ? getMobileFormWidget(context)
                  : getOtpFormWidget(context),
          padding: const EdgeInsets.all(16)),
    );
  }
}
