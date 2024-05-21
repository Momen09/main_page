import 'package:flutter/material.dart';

class PrevPaymentButton extends StatelessWidget {
  const PrevPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 343,
        height: 64,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          trailing: Image.asset('assets/images/dollar.png'),
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text(
            'عمليات الدفع السابقة',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Cairo'),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/prev_payment');
          },
        ),
      ),
    );
  }
}
