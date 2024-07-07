import 'package:flutter/material.dart';
import 'package:travel/screens/home.dart';
import 'package:travel/widgets/iconB.dart';
// import 'package:travel/screens/AniS.dart';
import 'package:travel/screens/profile.dart';
import 'package:travel/screens/fav.dart';
import 'package:travel/screens/chat.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _page = index;
          });
        },
        children: List.generate(4, (index){
          if(index == 0){
            return Home();
          }else if(index == 1){
            return Favorite();
          }else if(index == 2){
            return Chat();
          }else if(index == 3){
            return Profile();
          }else{
            return Home();
          }
        }

        ),

      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.favorite, page: 1),
            barIcon(icon: Icons.mode_comment, page: 2, badge: true),
            barIcon(icon: Icons.person, page: 3),
            SizedBox(width: 7.0),
          ],
        ),
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
    
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0, color: Colors.red, ) : Icon(icon, size: 24.0),
      color:
           Colors.blueGrey[300],
          //  _page == page ? Theme.of(context).accentColor :
      onPressed: () => _pageController.jumpToPage(page),
    );
  }
}