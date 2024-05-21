


import 'package:flutter/material.dart';

import 'fees_payment.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          const SizedBox(height: 30,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 125,),
               const Center(
                 child: Positioned(
                            //  left: 120,
                             // top: 23,
                             child: Text(
                               'ايصال السداد',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                     color: Color(0xFF292D32),
                     fontSize: 15,
                     fontFamily: 'Cairo',
                     fontWeight: FontWeight.w600,
                     height: 0.09,
                               ),
                             ),
                           ),
               ),
          const SizedBox(width: 110,),

          IconButton(onPressed: 
          (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Fees())));
          }, icon: const Icon(Icons.arrow_forward_ios))
          ],
         ),
          const SizedBox(height: 20,),

        Padding(padding: const EdgeInsets.all(20), child:   Container(
padding: const EdgeInsets.all(3),
            width: 343,
            height: 520,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 26,),
                const Text(
                      'تم سداد قيمة الخدمة بنجاح',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF2A031),
                        fontSize: 16,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                                const SizedBox(height: 26,),
Image.network('https://cdn.britannica.com/17/155017-050-9AC96FC8/Example-QR-code.jpg', width: 150, height: 150,),
                                const SizedBox(height: 26,),
 
                       const Text(
                        'تم سداد الرسوم الدراسية  كلية الاداب المستوى  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    
                      const SizedBox(height: 26,),

                      const Text(
                        'الرابع الفصل الدراسى الثانى-2023-2024 ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                      const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      'رودينا محمود سلام',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': اسم الطالب' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),
                      const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      '7812659',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': كود امر الدفع' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),
                          const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      '3b329-a298-4969-8eff-d5749f432d',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 11,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': كود عمليه الدفع' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),
                          const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Column(
                            children: [
                              Text(
                                      'المستوى الرابع الفصل ',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(height: 17,),
                           Text(
                                      'الدراسي الثاني 2023-2024',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                              
                            ],
                          ), 
                        SizedBox(width: 7,),

                        Text(': كليه الاداب' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),      const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      '11/05/2024',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': التاريخ' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),      const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      'جنيه 150.00',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': سعر الخدمه' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),      const SizedBox(height: 26,),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text(
                                      '1500 جنيه',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFFF2A031),
                                        fontSize: 14,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),  
                                    SizedBox(width: 3,), 
                        Text(': المبلغ الكلي بدون رسوم التحصيل الألكتروني' ,
                            textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Color(0xFF292D32),
                                        fontSize: 12,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.w600,
                                        height: 0.12,
                        )),
                         
                        SizedBox(width: 6,),
                  ],
                    ),
              ],
            ),
          ),
          ),

         Padding(padding: const EdgeInsets.all(15), child:  Container(
            width: 343,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 58, 87, 248),
                  Color.fromARGB(255, 7, 7, 109)
              ])
            ),
            child:           MaterialButton(
           
            onPressed: (){}, child:  const Text(
        'طباعة الايصال',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
          height: 0.09,
        ),
      ),),
          ),)

        ],
      ),
    );
  }
}