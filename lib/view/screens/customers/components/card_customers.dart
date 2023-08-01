import 'package:flutter/material.dart';

import '../../../../helpers/appcolors.dart';

class CardCustomers extends StatefulWidget {
  const CardCustomers({super.key});

  @override
  State<CardCustomers> createState() => _CardCustomersState();
}

class _CardCustomersState extends State<CardCustomers> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: AppColors.whiteColor,
            width: MediaQuery.sizeOf(context).width,
            height: 113,
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: AppColors.dividerColor,
                    height: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Customers',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
