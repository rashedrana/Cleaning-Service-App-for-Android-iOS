import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:mobile_cleaning_service/view/resetPasswordf.dart';

class Account extends StatefulWidget {
  final UserData userProfile;
  const Account(this.userProfile, {Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController name = TextEditingController(text: "");
  final TextEditingController phone = TextEditingController(text: "");
  final TextEditingController wPrice = TextEditingController(text: "");
  final TextEditingController dPrice = TextEditingController(text: "");
  final TextEditingController mPrice = TextEditingController(text: "");
  final TextEditingController address = TextEditingController(text: "");

  @override
  void initState() {
    name.text = widget.userProfile.firstname;
    phone.text = widget.userProfile.phoneNumber;
    address.text =
        // ignore: unnecessary_null_comparison
        widget.userProfile.address;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Account"),
        backgroundColor: Color(0xff32cb95),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isLoading) {
            EasyLoading.show(status: 'loading...');
          } else if (state.isAuthenticated) {
            EasyLoading.dismiss();
            EasyLoading.showSuccess('Changes Saved!');
          }
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://www.linkpicture.com/q/undraw_profile_pic_ic5t-1.png'),
                        width: 90,
                        height: 90,
                      ),
                      // Icon(
                      //   Icons.account_circle_outlined,
                      //   size: 80,
                      //   color: Color.fromRGBO(120, 209, 168, 1),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'My Account',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff32cb95),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextField(
                    controller: name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Rashed Rana",
                      labelText: "Your Name",
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "abc123@mail.com",
                      labelText: "Email",
                      //
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextField(
                    controller: address,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Address",
                      labelText: "Address",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: TextField(
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "01234567890",
                      labelText: "Phone",
                    ),
                  ),
                ),
                if (widget.userProfile.isCleaner == true)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: dPrice,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "300Tk.",
                        labelText: "Daily price",
                      ),
                    ),
                  ),
                if (widget.userProfile.isCleaner == true)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: wPrice,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "2000Tk.",
                        labelText: "Weekly Price",
                      ),
                    ),
                  ),
                if (widget.userProfile.isCleaner == true)
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: TextField(
                      controller: mPrice,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "7500Tk.",
                        labelText: "Monthly Price",
                      ),
                    ),
                  ),
                SizedBox(
                  height: 30,
                ),
                saveButton(),
                SizedBox(
                  height: 10,
                ),
                passwordButton(),
                SizedBox(
                height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget saveButton() {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return GestureDetector(
      onTap: () {
        authBloc.add(UpdateUserData(widget.userProfile.copyWith(
            address: address.text,
            firstname: name.text,
            phoneNumber: phone.text,
            mPrice: (mPrice.text == "") ? 0 : int.parse(mPrice.text),
            dPrice: (dPrice.text == "") ? 0 : int.parse(dPrice.text),
            wPrice: (wPrice.text == "") ? 0 : int.parse(wPrice.text))));
        //TODO:REGISTER HERE
      },
      child: Container(
        height: 45,
        width: 250,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff32cb95),
        ),
        child: Center(
          child: Text(
            "Save",
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget passwordButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPasswordF()));
        //TODO:REGISTER HERE
      },
      child: Container(
        height: 45,
        width: 250,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff32cb95),
        ),
        child: Center(
          child: Text(
            "Change Password",
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
  }
