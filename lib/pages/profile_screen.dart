// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../constants/const.dart';
import 'drawer_page.dart';
import 'home_page.dart';
import '../constants/profile_clipper.dart';
import 'search_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  PageController _yourFavorPageController;
  PageController _yourPostsPageController;

  @override
  void initState() {
    super.initState();
    _yourFavorPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);

    _yourPostsPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: ProfileClipper(),
                    child: Image(
                      height: 300,
                      width: double.infinity,
                      image: AssetImage('assets/user_background.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () => _scaffoldkey.currentState.openDrawer(),
                      iconSize: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image(
                          height: 120,
                          width: 120,
                          image: AssetImage(
                            'assets/user.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Abdullah Khan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: 3,
            selectedItemColor: AppColors.greenColor,
            unselectedItemColor: Colors.black26,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(FlutterIcons.compass),
                    onPressed: () {},
                  ),
                ),
                label: "data",
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          icon: Icon(FlutterIcons.list),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => HomePage(),
                            ));
                          })),
                  label: "data"),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(FlutterIcons.search),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SearchPage(),
                        ),
                      );
                    },
                  ),
                ),
                label: "data",
              ),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => Profile(),
                          )),
                      child: Icon(FlutterIcons.person_outline)),
                  label: "data"),
            ],
          ),
        ));
  }
}
