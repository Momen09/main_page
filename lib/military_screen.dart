import 'package:flutter/material.dart';

class MilitaryScreen extends StatelessWidget {
  const MilitaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 812,
          width: 375,
          color: const Color(0xFFECF0F2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'رسوم التربية العسكرية',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 390,
                width: 375,
                child: Container(
                  margin:const EdgeInsets.all(10),
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          20.0),
                      topRight: Radius.circular(
                          20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildRow('أوامر الدفع', Colors.white, 40,
                          TextAlign.right, FontWeight.bold, 'cairo'),
                      _buildRow('كود أمر الدفع:1002221', const Color(0xFFECF0F2), 40,
                          TextAlign.left, FontWeight.w600, 'cairo'),
                      _buildRow(
                          'الفصل الدراسي:كلية الآداب المستوى الرابع الفصل الدراسي الثاني 2023-2024',
                          Colors.white,
                          50,
                          TextAlign.right,
                          FontWeight.w600,
                          'cairo'),
                      _buildRow(
                          'المصروف الفرعي:مصروفات الترم الصيفى',
                          const Color(0xFFECF0F2),
                          40,
                          TextAlign.left,
                          FontWeight.w600,
                          'cairo'),
                      _buildRow('المبلغ المستحق:150 جنيهاً ', Colors.white, 40,
                          TextAlign.right, FontWeight.w600, 'cairo'),
                      _buildRow('حاله الدفع:لم يتم الدفع', const Color(0xFFECF0F2), 40,
                          TextAlign.right, FontWeight.w600, 'cairo'),
                      _buildRow('تاريخ الاستحقاق:11/05/2024', Colors.white,
                          40, TextAlign.left, FontWeight.w600, 'cairo'),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10),
                child: SizedBox(
                  height: 48,
                  width: 348,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient:const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF00D4FF), Color(0xFF090979)],
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                      },
                      child:const Text(
                        'دفع',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildRow(String text, Color color, double height, TextAlign alignment,
      FontWeight fontWeight, String fontFamily) {
    return Container(
      color: color,
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            text,
            textAlign: alignment,
            style: TextStyle(
              fontSize: 16,
              color:
              text == 'أوامر الدفع'
                  ? const Color(0xFFF2A031)
                  : Colors.black,
              fontWeight: fontWeight,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
