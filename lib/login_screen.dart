import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen( {super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates:  const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: ExactAssetImage("assets/images/logo.png"),
                width: 200,
                height: 200,),

              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyle(
                      color:Color.fromARGB(255, 28, 18, 67),
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,

                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 16),
                    child: Text(
                      'نوع المستخدم',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SectionDropDown(
                hint: 'طالب جامعي',
                label1: 'طالب جامعي',



                icon: Image(
                  image:ExactAssetImage("assets/images/profile.png"),
                  height: 30,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      'الكلية',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const CustomDropDown(
                hint: 'كلية الاداب',
                label1: 'قسم تكنولوجيا المعلومات والمكتبات',
                label2: 'قسم المكتبات',
                label3: "قسم اللغه الانجليزيه",
                label4:" القسم الجغرافيا",
                label5: 'قسم علم النفس',
                label6: 'قسم علم نفس اكلنيكي',
                label7: 'قسم التاريخ',
                label8: "قسم انجليزي مميز",
                icon: Image(
                  image:ExactAssetImage("assets/images/university.png"),
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'الرقم القومي',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Image(
                    image:ExactAssetImage("assets/images/id-card.png"),
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 320,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '123456789',
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment. bottomCenter,
                      colors: [Color(0xFF00D4FF), Color(0xFF090979)],
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      fixedSize: const Size(343, 48),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/barScreen');
                    },
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'cairo'),
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
}

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
        this.icon,
        required this.hint,
        required this.label1,
        required this.label2,
        required this.label3,
        required this.label4,
        required this.label5,
        required this.label6,
        required this.label7,
        required this.label8});
  final String hint;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  final String label5;
  final String label6;
  final String label7;
  final String label8;
  final Image? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(child: icon),
        ),
        DropdownMenu(
          trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                  color: Color(0xff1B3A56), fontWeight: FontWeight.bold),
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff1B3A56),
                  ))),
          width: MediaQuery.of(context).size.width * 0.8,
          onSelected: (value) {},
          dropdownMenuEntries: [
            DropdownMenuEntry(
              value: 1,
              label: label1,
              labelWidget: Text(
                label1,
              ),
            ),
            DropdownMenuEntry(
              value: 2,
              label: label2,
              labelWidget: Text(label2),
            ),
            DropdownMenuEntry(
              value: 3,
              label: label3,
              labelWidget: Text(label3),
            ),
            DropdownMenuEntry(
              value: 4,
              label: label4,
              labelWidget: Text(label4),
            ),
            DropdownMenuEntry(
              value: 5,
              label: label5,
              labelWidget: Text(label5),
            ),
            DropdownMenuEntry(
              value: 6,
              label: label6,
              labelWidget: Text(label6),
            ),
          ],
          hintText: hint,
        ),
      ],
    );

  }
}

class SectionDropDown extends StatelessWidget {
  const SectionDropDown(
      {super.key,
        this.icon,
        required this.hint,
        required this.label1
      });

  final String hint;
  final String label1;


  final Image? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(child: icon),
        ),
        DropdownMenu(
          trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                  color: Color(0xff1B3A56), fontWeight: FontWeight.bold),
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff1B3A56),
                  ))),
          width: MediaQuery.of(context).size.width * 0.8,
          onSelected: (value) {},
          dropdownMenuEntries: [
            DropdownMenuEntry(
              value: 1,
              label: label1,
              labelWidget: Text(
                label1,
              ),
            ),

          ],
          hintText: hint,
        ),
      ],
    );

  }
}


const kColor = [Colors.white, Colors.blue];

