

import 'package:flutter/material.dart';
import 'package:main_page/profile2.dart';
import 'package:main_page/widgets/app_title.dart';

import 'fees_payment.dart';


class PreviousPayments extends StatelessWidget {
  static const routename = '/prev_payment';
  const PreviousPayments({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade200,
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const SizedBox(height: 12,),
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppTitle(title: 'عمليات الدفع السابقه', onPressed: (){
              Navigator.pushReplacementNamed(context, Profile2.routename);
            },),
          ),),
          const SizedBox(height: 25,),

          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Text('الرسوم الدراسيه', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),),
                  Image.asset('assets/images/collage2.png')
                ],
              ),
            ),
          ),
          const SizedBox(height:15,),
             InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
              },
               child: Container(
                           padding: const EdgeInsets.all(10),
                           width: 343,
                           height: 64,
                           decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
                           ),
                           child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Text('رسوم المدينه الجامعيه', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),),
                  Image.asset('assets/images/collage3.png')
                ],
                           ),
                         ),
             ), const SizedBox(height:15,),      
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
              },
              child: Container(
              padding: const EdgeInsets.all(10),
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Text('رسوم الترم الصيفي', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),),
                  Image.asset('assets/images/collage4.png')
                ],
              ),
                        ),
            ),
          const SizedBox(height:15,),      

          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Text('رسوم التظلمات', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),),
                  Image.asset('assets/images/sheet.png')
                ],
              ),
            ),
          ), 
           const SizedBox(height:15,),      
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Text('رسوم التربيه العسكريه', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),),
                  Image.asset('assets/images/policy.png')
                ],
              ),
            ),
          ),
           const SizedBox(height:15,),      
          
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Fees()));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 343,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios), 
                  const SizedBox(width: 100,),
                  const Center(child: Text('رسوم الكتاب الالكتروني', textAlign: TextAlign.right,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500, fontFamily: 'Cairo'),)),
                 
                  Image.asset('assets/images/book.png')
                ],
              ),
            ),
          ),  

        ],),
      ),
    );
  }
}