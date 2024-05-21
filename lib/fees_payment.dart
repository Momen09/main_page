

import 'package:flutter/material.dart';
import 'package:main_page/previous_payment.dart';
import 'package:main_page/receipt.dart';

// import 'package:flutter_application_1/previous_payment.dart';

import 'widgets/app_title.dart';

class Fees extends StatelessWidget {
  const Fees({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,

      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            AppTitle(title: 'الرسوم الدراسيه المدفوعه', onPressed: (){Navigator.pushReplacementNamed(context, PreviousPayments.routename);},),
            SizedBox(height: 20,),
     
          AppTap(title: 'كليه الاداب االمستوى الاول',subtitle: 'الفصل الدراسي الاول 2020-2021', onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));
          },),
          AppTap(title: 'كليه الاداب االمستوى الاول',subtitle: 'الفصل الدراسي الثاني 2020-2021',
          onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));
          },
          ),
          AppTap(title: 'كليه الاداب االمستوى الثاني',subtitle: 'الفصل الدراسي الاول 2021-2022',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));
          },),
          AppTap(title: 'كليه الاداب االمستوى الثاني',subtitle: 'الفصل الدراسي الثاني 2021-2022',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));

          },), 
          AppTap(title: 'كليه الاداب االمستوى الثالث',subtitle: 'الفصل الدراسي الاول 2022-2023',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));

          },),
          AppTap(title: 'كليه الاداب االمستوى الثالث',subtitle: 'الفصل الدراسي الثاني 2022-2023',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));

          },),
          AppTap(title: 'كليه الاداب االمستوى الرابع',subtitle: 'الفصل الدراسي الاول 2023-2024',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));

          },),
          AppTap(title: 'كليه الاداب االمستوى الرابع',subtitle: 'الفصل الدراسي الثاني 2023-2024',onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Receipt())));

          },),
          SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}

class AppTap extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function()? onTap;
  const AppTap({super.key, required this.title, required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(11)),
          width: 343,
          height: 64,
          // padding: EdgeInsets.only(bottom: 7),
          child:  ListTile(
            // contentPadding: EdgeInsets.only(bottom: 5, left: 3, right: 12),
        title: Text(
        title,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: Color(0xFF292D32),
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w500,
          height: 0.12,
        ),
          ),
        subtitle:Text(
       subtitle,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: Color(0xFF292D32),
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w500,
          height: 0.12,
        ),
          ) ,
          leading: const Icon(Icons.arrow_back_ios),
        )),
      ),
    );
  }
}
