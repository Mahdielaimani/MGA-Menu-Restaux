import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';

class TopCardIcons extends StatelessWidget {
  const TopCardIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(color: AppColors.whiteColor
          // borderRadius: BorderRadius.circular(8),
          ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.bolt_outlined,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.contact_support_outlined,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications_none,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.local_fire_department_outlined,
          ),
          SizedBox(width: 10),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
