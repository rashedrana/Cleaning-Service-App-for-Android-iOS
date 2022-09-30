import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/Home.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/application/productBloc/product_bloc.dart';
import 'package:mobile_cleaning_service/customer_dash.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/domain/i_order_provider.dart';
import 'package:mobile_cleaning_service/infrastructure/auth/firebase_auth_provider.dart';
import 'package:mobile_cleaning_service/infrastructure/order_provider.dart';
import 'package:mobile_cleaning_service/login.dart';
import 'package:mobile_cleaning_service/signup.dart';
import 'package:mobile_cleaning_service/view/performance.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

void main() {
  runApp(AppPage());
}

class AppPage extends StatefulWidget {
  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider<IAuthProvider>(
                  create: (context) =>
                      FirebaseAuthProvider(FirebaseAuth.instance),
                ),
                RepositoryProvider<IProductProvider>(
                  create: (context) => ProductProvider(),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(context.read<IAuthProvider>())
                      ..add(const AuthEvent.authCheckRequested())
                      ..add(const AuthEvent.getUserList()),
                  ),
                  BlocProvider<ProductBloc>(
                      create: (context) => ProductBloc(
                            context.read<IProductProvider>(),
                            context.read<IAuthProvider>(),
                          ))
                ],
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Cleaning Service',
                    builder: EasyLoading.init(),
                    home: BlocListener<AuthBloc, AuthState>(
                      listenWhen: (c, p) =>
                          c.isAuthenticated != p.isAuthenticated,
                      listener: (context, state) {
                        if (state.isAuthenticated &&
                            state.userData.isCleaner == false) {
                          Logger().i(state.userData.isCleaner);
                          AuthBloc(context.read<IAuthProvider>())
                            ..add(const AuthEvent.getUserList());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CustomerDash(state.userDataList)),
                          );
                        } else if (state.isAuthenticated &&
                            state.userData.isCleaner == true) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Performance(state.userData)),
                          );
                        }
                      },
                      child: Scaffold(
                        body: Welcome(),
                      ),
                    )),
              ),
            );
          }
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Cleaning Service',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                    // value: controller.value,
                    ),
              ),
            ),
          );
        });
  }
}
