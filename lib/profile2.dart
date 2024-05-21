import 'package:flutter/material.dart';
import 'package:main_page/pev_payment.dart';

class Profile2 extends StatefulWidget {
  static const routename = '/profile2';
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'بيانات الطالب',
              textAlign: TextAlign.right,
              style:  TextStyle(
    color: Color(0xFF292D32),
    fontSize: 18,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
    height: 0.07,
  ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 343,
              height: 416,
              child: Card(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    
                     Center(
                      child: Container(
                        decoration: const ShapeDecoration(shape: OvalBorder(),
                        color: Color(0xFF014656),),
                        width: 96,
                        height: 96,
                        child: 
                                Image.asset('assets/images/userr.png', width: 70.85,
                                height: 72,),
                        // CircleAvatar(
                        //   backgroundImage: NetworkImage(
                        //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKt9hemafFLtW05dyBkk8cVtuCp8w3F3tkEO3nMiK8Zg&s'),
                        // ),
                        
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('رودينا سلام',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),
),
                        const SizedBox(
                          width: 8,
                        ),
Image.asset("assets/images/person.png"),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('كلية الاداب', style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/collage.png',
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('تقنية المعلومات والمكتبات (مميز)',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/paper.png',
                          ),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('المستوي الرابع',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/graduatecap.png',
                          ),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(':رقم الجلوس',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/chair.png',
                          ),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(':حالة الطالب',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/graduatecap.png',
                          ),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('rodina_sallam2001@gmail.com',style: TextStyle(
    color: Color(0xFF292D32),
    fontSize: 16,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
    height: 0.09,
  ),),
                        const SizedBox(
                          width: 8,
                        ),
                      Center(
                            child: Image.asset('assets/images/email.png'),),
                        const SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

const PrevPaymentButton(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}