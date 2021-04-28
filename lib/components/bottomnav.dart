import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  String nav = 'home';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: nav == 'home' ? Color(0xFF8D6E0F) : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ImageIcon(
                AssetImage(nav == 'home'
                    ? "assets/icon/home-fill.png"
                    : "assets/icon/home.png"),
                size: 20,
                color: nav == 'home' ? Colors.white : Color(0xFFBCB29E),
              ),
            ),
            onTap: () {
              setState(() {
                nav = 'home';
              });
            },
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: nav == 'like' ? Color(0xFF8D6E0F) : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ImageIcon(
                AssetImage(nav == 'like'
                    ? "assets/icon/like-fill.png"
                    : "assets/icon/like.png"),
                size: 20,
                color: nav == 'like' ? Colors.white : Color(0xFFBCB29E),
              ),
            ),
            onTap: () {
              setState(() {
                nav = 'like';
              });
            },
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: nav == 'task' ? Color(0xFF8D6E0F) : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ImageIcon(
                AssetImage(nav == 'task'
                    ? "assets/icon/task-fill.png"
                    : "assets/icon/task.png"),
                size: 20,
                color: nav == 'task' ? Colors.white : Color(0xFFBCB29E),
              ),
            ),
            onTap: () {
              setState(() {
                nav = 'task';
              });
            },
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color:
                    nav == 'setting' ? Color(0xFF8D6E0F) : Colors.transparent,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(16.0),
              child: ImageIcon(
                AssetImage("assets/icon/setting.png"),
                size: 20,
                color: nav == 'setting' ? Colors.white : Color(0xFFBCB29E),
              ),
            ),
            onTap: () {
              setState(() {
                nav = 'setting';
              });
            },
          ),
        ],
      ),
    );
  }
}
