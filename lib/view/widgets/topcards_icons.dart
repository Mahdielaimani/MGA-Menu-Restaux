part of '../../../packages/packages.dart';

class TopCardIcons extends StatelessWidget {
  const TopCardIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: context.width,
      decoration: const BoxDecoration(color: AppColors.kwhiteColor
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
