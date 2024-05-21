import 'package:flutter/material.dart';

class EducationFeesScreen extends StatelessWidget {
  const EducationFeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: 812, // طول الصفحة
          width: 375, // عرض الصفحة
          color: Color(0xFFECF0F2), // لون الخلفية
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 7), // تباعد من الأعلى
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      // اضف هنا الاكشن الذي تريده عند الضغط على زر الرجوع
                    },
                  ),
                ],
              ),
              SizedBox(height: 10), // تباعد بين زر الرجوع وعنوان الصفحة
              Text(
                'الرسوم الدراسية',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // تباعد بين عنوان الصفحة وبقية المحتوى
              SizedBox(
                height: 390, // طول المربع
                width: 375, // عرض المربع
                child: Container(
                  margin: EdgeInsets.all(10), // تباعد داخلي للمربع الأبيض
                  decoration: BoxDecoration(
                    color: Colors.white, // لون المربع الأبيض
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          20.0), // زاوية دائرية للزاوية العلوية اليسرى
                      topRight: Radius.circular(
                          20.0), // زاوية دائرية للزاوية العلوية اليمنى
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildRow('أوامر ألدفع', Colors.white, 40,
                          TextAlign.right, FontWeight.bold, 'cairo'),
                      _buildRow('كود أمر الدفع:7812659', Color(0xFFECF0F2), 40,
                          TextAlign.left, FontWeight.w600, 'cairo'),
                      _buildRow(
                          'الفصل الدراسي:كليه الاداب المستوى الرابع الفصل الدراسي الثاني-2023-2024',
                          Colors.white,
                          50,
                          TextAlign.right,
                          FontWeight.w600,
                          'cairo'),
                      _buildRow(
                          'المصروف الفرعي:مصروفات الفصل الدراسي الثاني',
                          Color(0xFFECF0F2),
                          40,
                          TextAlign.left,
                          FontWeight.w600,
                          'cairo'),
                      _buildRow('المبلغ المستحقه:2250', Colors.white, 40,
                          TextAlign.right, FontWeight.w600, 'cairo'),
                      _buildRow('المبلغ المدفوع:0.00', Color(0xFFECF0F2), 40,
                          TextAlign.left, FontWeight.w600, 'cairo'),
                      _buildRow('حاله الدفع:لم يتم الدفع', Colors.white, 40,
                          TextAlign.right, FontWeight.w600, 'cairo'),
                      _buildRow('تاريخ الاستحقاق:26/04/2024', Color(0xFFECF0F2),
                          40, TextAlign.left, FontWeight.w600, 'cairo'),
                      _buildRow('طلب تقسيط:تقديم طلب تقسيط', Colors.white, 40,
                          TextAlign.right, FontWeight.normal, 'cairo'),
                      // يمكنك إضافة المزيد من الصفوف هنا
                    ],
                  ),
                ),
              ),
              Spacer(), // يمتد ليأخذ كل المساحة المتاحة بين المربع والأسفل
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10), // تباعد بين المربع الأبيض والزر الأزرق
                child: SizedBox(
                  height: 48, // طول الزر
                  width: 348, // عرض الزر
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF00D4FF), Color(0xFF090979)],
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // اضف هنا الاكشن الذي تريده عند الضغط على الزر
                      },
                      child: Text(
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
              text == 'أوامر ألدفع' || text == 'طلب تقسيط:تقديم طلب تقسيط'
                  ? Color(0xFFF2A031)
                  : Colors.black, // لون النص
              fontWeight: fontWeight, // وزن الخط
              fontFamily: fontFamily, // نوع الخط
            ),
          ),
        ),
      ),
    );
  }
}
