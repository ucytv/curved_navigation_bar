import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar_app/pages/profile_page.dart';
import 'package:curved_navigation_bar_app/pages/chat_page.dart';
import 'package:curved_navigation_bar_app/pages/lobby_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  //Başlangıçtaki indis değeri
  int _activePage = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  //Sekmedeki sayfalar
  final List<Widget> _tabItems = [
    LobbyPage(),
    ProfilePage(),
    ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildCurvedNavigationBar(),
      body: Container(
        child: _tabItems[
        _activePage], //Listenin '_activePage' inci indisindeki sayfa
      ),
    );
  }

  CurvedNavigationBar _buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: _activePage,
      backgroundColor: Colors.white,
      color: Colors.red,
      items: <Widget>[
        Icon(
          Icons.account_balance,
          size: 32,
          color: Colors.white,
        ),
        Icon(
          Icons.accessibility,
          size: 32,
          color: Colors.white,
        ),
        Icon(
          Icons.add_comment_sharp,
          size: 32,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        setState(() {
          _activePage = index;
        });
      },
    );
  }
}
