import 'package:flutter/material.dart';
import 'package:main_page/Grievances_screen.dart';
import 'package:main_page/another_pay_screen.dart';
import 'package:main_page/book_fees_screen.dart';
import 'package:main_page/education_fees_screen.dart';
import 'package:main_page/home_page.dart';
import 'package:main_page/previous_payment.dart';
import 'package:main_page/profile2.dart';
import 'package:main_page/summer_term_screen.dart';
import 'package:main_page/uni_fees_screen.dart';
import 'package:main_page/login_screen.dart';
import 'package:main_page/wallet_screen.dart';
import 'bar_screen.dart';
import 'military_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/loginScreen',
        routes: {
          PreviousPayments.routename: (context)=> const PreviousPayments(),
          Profile2.routename :(context) => const Profile2(),
          '/walletScreen': (context) => const WalletScreen(),
          '/loginScreen': (context) => const LoginScreen(),
          '/barScreen': (context) => const BarScreen(),
          '/military': (context) => const MilitaryScreen(),
          '/grievances': (context) => const GrievancesScreen(),
          '/anotherPay': (context) => const AnotherPayScreen(),
          '/educationFees': (context) => const EducationFeesScreen(),
          '/summerTerm': (context) => const SummerTermScreen(),
          '/uniFees': (context) => const UniFeesScreen(),
          '/bookFees': (context) => const BookFeesScreen(),
        },
        home: const LoginScreen(),),);
  }
}
