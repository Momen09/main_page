import 'package:flutter/material.dart';
import 'package:main_page/book_fees_screen.dart';
import 'package:main_page/profile2.dart';
import 'package:main_page/wallet_screen.dart';

import 'home_page.dart';
import 'login_screen.dart';

class BarScreen extends StatefulWidget {
  const BarScreen({super.key});

  @override
  State<BarScreen> createState() => _BarScreenState();
}

class _BarScreenState extends State<BarScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Profile2(),
          WalletScreen(),
          HomePage(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 10,
          top: 5,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            fixedColor: const Color(0xff4A7C87),
            // showSelectedLabels: true,
            // showUnselectedLabels: true,
            selectedFontSize: 15,
            unselectedItemColor: const Color(0xff4A7C87),
            selectedIconTheme: const IconThemeData(
              color: Color(0xff004152),
            ),
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/user.png'),
                ),
                label: 'بيانات الطالب',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/wallet-3.png'),
                ),
                label: 'المحفظه',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/home-2.png'),
                ),
                label: 'الرئيسية',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffEBEEF3),
    );
  }
}
