part of '../../../packages/packages.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor:
            const MaterialStatePropertyAll(AppColors.kbuttLoginColor),
        padding: MaterialStatePropertyAll(ResponsiveValue(context,
                defaultValue: const EdgeInsets.fromLTRB(205, 18, 205, 18),
                valueWhen: isMobileTabletButt)
            .value),
      ),
      onPressed: () {
        router.pushNamed('menuScreen');
      },
      child: const Text('Login',
          style: TextStyle(
            color: AppColors.kgreyColor,
            // color: Colors.gre,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          )),
    );
  }
}
