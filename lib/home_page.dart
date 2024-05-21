import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myItems = [
    Image.asset('assets/images/unii.png'),
    Image.asset('assets/images/unii.png'),
    Image.asset('assets/images/unii.png'),
    Image.asset('assets/images/unii.png'),
    Image.asset('assets/images/unii.png'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    height: 25, child: Image.asset('assets/images/alert1.png')),
                const Spacer(),
                const Text(
                  'اهلآ سارة أسامة',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff261E84)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رسوم متأخره',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Color(0xffFCC844)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'لم يتم دفع الرسوم الدراسيه للعام الدراسى 2024يجب السداد قبل 2024-03-24',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: CarouselSlider(
                  items: myItems,
                  options: CarouselOptions(
                      height: 185,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      })),
            ),
            const SizedBox(
              height: 5,
            ),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: myItems.length,
              effect: const WormEffect(
                dotColor: Color(0xff4A7C87),
                activeDotColor: Color(0xff004152),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
              ),
              children: [
                _detailsGrid('assets/images/1.png', ' الرسوم    الدراسيه', () {
                  Navigator.pushNamed(context, '/educationFees');
                }),
                _detailsGrid('assets/images/2.png', ' رسوم المدينه الجامعيه',
                    () {
                  Navigator.pushNamed(context, '/uniFees');
                }),
                _detailsGrid('assets/images/3.png', ' رسوم الترم الصيفي', () {
                  Navigator.pushNamed(context, '/summerTerm');
                }),
                _detailsGrid('assets/images/4.png', ' رسوم     التظلمات', () {
                  Navigator.pushNamed(context, '/grievances');
                }),
                _detailsGrid('assets/images/5.png', ' رسوم التربيه العسكريه',
                    () {
                  Navigator.pushNamed(context, '/military');
                }),
                _detailsGrid('assets/images/6.png', ' رسوم الكتاب الاكتروني',
                    () {
                  Navigator.pushNamed(context, '/bookFees');
                }),
                _detailsGrid('assets/images/cash.png', ' مدفوعات     اخرى', () {
                  Navigator.pushNamed(context, '/anotherPay');
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailsGrid(
    String image,
    String data,
    VoidCallback? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              image,
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                data,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
