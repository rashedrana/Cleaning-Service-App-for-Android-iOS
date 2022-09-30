import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/domain/user/user_profile.dart';
import 'package:mobile_cleaning_service/view/account.dart';
import 'package:mobile_cleaning_service/view/clean_home.dart';
import 'package:mobile_cleaning_service/view/pages/customer_notification.dart';
import 'package:mobile_cleaning_service/view/pages/favorite.dart';
import 'package:mobile_cleaning_service/view/pages/help_support.dart';
import 'package:mobile_cleaning_service/view/pages/promo_code.dart';
import 'package:mobile_cleaning_service/view/pages/settings.dart';
import 'package:mobile_cleaning_service/view/performance.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';
import 'package:mobile_cleaning_service/view/pages/my_address.dart';

import 'application/auth/auth_bloc.dart';
import 'application/productBloc/product_bloc.dart';
import 'domain/auth/i_auth_provider.dart';
import 'view/pages/myBooks.dart';

class CustomerDash extends StatefulWidget {
  final List<UserData> userDataList;
  const CustomerDash(this.userDataList, {Key? key}) : super(key: key);

  @override
  _CustomerDashState createState() => _CustomerDashState();
}

class _CustomerDashState extends State<CustomerDash> {
  List<int> list = [];
  // late TabController _tabController;

  @override
  void initState() {
    AuthBloc(context.read<IAuthProvider>())..add(const AuthEvent.getUserList());
    for (int i = 0; i <= 9; i++) {
      list.add(i);
    }
    //TabController _tabController=TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
      listener: (context, state) {
        if (state.isAuthenticated && state.userData.isCleaner == false) {
          Logger().i(state.userData.isCleaner);
          AuthBloc(context.read<IAuthProvider>())
            ..add(const AuthEvent.getUserList());
        }
      },
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xff32cb95),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorite'),
                backgroundColor: Colors.white12,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notifications'),
                backgroundColor: Colors.white12,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                if (_currentIndex == 0) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CustomerDash(widget.userDataList)));
                }
                if (_currentIndex == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                }
                if (_currentIndex == 2) {
                  BlocProvider.of<ProductBloc>(context)
                    ..add(GetCustomerOrderDataList());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerNotificationScreen(
                              state.userData.phoneNumber)));
                }
              });
            },
          ),
          key: _key,

          // Assign the key to Scaffold.
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    state.userData.firstname + " " + state.userData.lastname,
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text(''),
                  currentAccountPicture: CircleAvatar(
                    child: Image(
                        image: NetworkImage(
                            'https://www.linkpicture.com/q/undraw_profile_pic_ic5t_8.png')),
                    //Icon(
                    //   Icons.account_circle_outlined,
                    //   size: 50,
                    // ),
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                  decoration: BoxDecoration(color: Color(0xff32cb95)),
                  // otherAccountsPictures: [
                  //   CircleAvatar(child: Text('x')),
                  //   CircleAvatar(child: Text('x')),
                  // ],
                ),

                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.menu_book,
                      size: 30,
                    ),
                  ),
                  title: const Text("My Books"),
                  onTap: () {
                    BlocProvider.of<ProductBloc>(context)
                      ..add(GetCustomerOrderDataList());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyBook(state.userData.phoneNumber)));
                  },
                ),
                const Divider(),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white70),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                    ),
                  ),
                  title: const Text("My Account"),
                  onTap: () {
                    print('Text1');
                    // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                    //   return page1();
                    // }));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Account(state.userData)));
                  },
                ),
                const Divider(),

                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white70),
                    child: Icon(
                      Icons.money_off_sharp,
                      size: 30,
                    ),
                  ),
                  title: const Text("Promo Code"),
                  onTap: () {
                    // print('Text1');
                    Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      return promo();
                    }));
                  },
                ),
                const Divider(),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white70),
                    child: Icon(
                      Icons.help_sharp,
                      size: 30,
                    ),
                  ),
                  title: const Text("Help & Support"),
                  // trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    // print('Text1');
                    Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                      return help();
                    }));
                  },
                ),
                const Divider(),

                // title: Text('Page2'),
                // trailing: Icon(Icons.arrow_forward),
                // onTap: () {
                //   print('Text2');
                // Navigator.push(context, MaterialPageRoute(builder: (cnx) {
                //   return page2();
                // }));

                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white70),
                    child: Icon(
                      Icons.power_settings_new,
                      size: 30,
                    ),
                  ),
                  title: const Text("Logout"),
                  onTap: () {
                    authBloc.add(const SignedOut());
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Welcome();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),

          // drawer: Drawer(
          //   // Add a ListView to the drawer. This ensures the user can scroll
          //   // through the options in the drawer if there isn't enough vertical
          //   // space to fit everything.
          //   child: ListView(
          //     // Important: Remove any padding from the ListView.
          //     padding: EdgeInsets.zero,
          //     children: [
          //       DrawerHeader(
          //         decoration: BoxDecoration(
          //           color: Color(0xff32cb95),

          //         ),
          //         child: Text("MOBILE\nCleaning Service"),
          //       ),

          //       ListTile(
          //         title: const Text('Log out'),
          //         onTap: () {
          //           authBloc.add(const SignedOut());
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) {
          //                 return Welcome();
          //               },
          //             ),
          //           );
          //         },
          //       ),
          //     ],
          //   ),
          // ),

          body: BlocListener<AuthBloc, AuthState>(
            listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
            listener: (context, state) {
              if (state.isAuthenticated && state.userData.isCleaner == false) {
                Logger().i(state.userData.isCleaner);
                AuthBloc(context.read<IAuthProvider>())
                  ..add(const AuthEvent.getUserList());
              }
            },
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: Icon(
                          Icons.line_weight_rounded,
                          size: 40,
                          color: Color(0xff32cb95),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/login.png"))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff32cb95),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          child: Text(
                        "Clean Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff32cb95)),
                      )),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 0),
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                'https://www.linkpicture.com/q/cleanhome2.png'),
                            width: 100,
                            height: 80,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          /* Container(
                                child: Icon(
                                  Icons.cleaning_services_sharp,
                                  size: 50,
                                  color: Color(0xff32cb95),
                                ),
                              ),*/
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recommended',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff32cb95)),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 230,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.userDataList.length,
                              itemBuilder: (BuildContext cnx, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CleanHome(
                                                state.userDataList[index])));
                                  },
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 170,
                                          width: 180,
                                          child: Image.network(
                                            'https://png.pngtree.com/png-clipart/20190618/original/pngtree-office-worker-female-go-to-work-office-worker-thinking-woman-png-image_3933871.jpg',
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                        Text(
                                          state.userDataList[index].firstname,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff32cb95),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.add_location_alt,
                                              color: Color(0xff32cb95),
                                              size: 20,
                                            ),
                                            Text(" "),
                                            Text(
                                              state.userDataList[index].address,
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff32cb95),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
