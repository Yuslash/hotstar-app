import 'package:flutter/material.dart';
import 'package:hotstar/NaviBarPage/downloadPage.dart';
import 'package:hotstar/NaviBarPage/newsPage.dart';
import 'package:hotstar/NaviBarPage/profilePage.dart';
import 'package:hotstar/NaviBarPage/searchPage.dart';
import 'package:hotstar/homePage.dart';

const Color _background = Color(0xFF0F1014);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _background,
        body: HomePage(),
        bottomNavigationBar: Builder(builder: (context) => Container(
          
          decoration: const BoxDecoration(
        
            border: Border(
              top: BorderSide(color: Color(0xff98999B), width: 0.2)
            )
          ),
          child: Padding(padding: EdgeInsets.all(10), child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Colors.transparent,
                      selectedItemColor: Colors.white,
                      selectedFontSize: 10,
                      unselectedFontSize: 10,
                      unselectedItemColor: Color(0xFF878B93),
                      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
                      onTap: (index) {
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchBarPage()));
                        } else if(index == 2) {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const NewsPage())
                          );
                        } else if(index == 3) {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => const DownloadPage()));
                        } else if(index == 4) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                        }

                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Image.asset('images/home.png', fit: BoxFit.contain,),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: Image.asset('images/search.png',fit: BoxFit.contain, ),
                            label: "Search"),
                        BottomNavigationBarItem(
                            icon: Image.asset('images/ligt.png',fit: BoxFit.contain, ),
                            label: "News & Hot"),
                        BottomNavigationBarItem(
                            icon: Image.asset('images/download.png',fit: BoxFit.contain, ),
                            label: "Download"),
                        BottomNavigationBarItem(
                            icon: Image.asset('images/mic.png',fit: BoxFit.contain, ),
                            label: "My Space"),
                      ],
                          ),
                        ), 
                      ),
      ),
    ));
  }
}