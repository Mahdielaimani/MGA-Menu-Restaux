part of 'pack_customs.dart';

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
        backgroundColor: MaterialStatePropertyAll(AppColors.buttLoginColor),
        padding: MaterialStatePropertyAll(ResponsiveValue(context,
                defaultValue: EdgeInsets.fromLTRB(205, 18, 205, 18),
                valueWhen: isMobileTabletButt)
            .value),
      ),
      onPressed: () {
        router.pushNamed('menuscreen');
      },
      child: const Text('Login',
          style: TextStyle(
            color: AppColors.greyColor,
            // color: Colors.gre,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          )),
    );
  }
}
