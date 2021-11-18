import 'package:flutter/material.dart';
import 'package:hackathon/pages/home_page.dart';
import 'package:hackathon/pages/profile_screen.dart';

import '../constants/const.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40),
          child: TextField(
            autofocus: false,
            decoration: InputDecoration(
                prefixIcon: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                hintText: 'Search by name or adress',
                suffixIcon: Icon(Icons.search)),
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
            currentIndex: 2,
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
                        }),
                  ),
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
