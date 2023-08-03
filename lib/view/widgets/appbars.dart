part of '../../../packages/packages.dart';

class AppBarWelcome extends StatelessWidget {
  const AppBarWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 40,
      color: AppColors.kappbarColor,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.circleExclamation,
            size: 18,
            color: AppColors.korageaColor,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'You have 15 days left in your trial.',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 25,
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.kbSideColor),
                ),
                onPressed: () {},
                child: Text(
                  "UPGRADE",
                  style: TextStyle(color: AppColors.kwhiteColor, fontSize: 12),
                )),
          ),
        ],
      ),
    );
  }
}
