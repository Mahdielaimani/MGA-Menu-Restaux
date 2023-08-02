import 'package:flutter/material.dart';

import 'package:menu_restaux/view/screens/payment/components/payment_class.dart';

import '../../../../core/constant/colors.dart';
import '../payment_system_screen.dart.dart';

class PaymentSystemCard extends StatelessWidget {
  const PaymentSystemCard({Key? key, required this.paymentSystem})
      : super(key: key);

  final PaymentSystemModel paymentSystem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            paymentSystem.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            paymentSystem.description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          const Text(
            'Free',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
