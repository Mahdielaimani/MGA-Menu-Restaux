part of '../../../../../packages/packages.dart';

class CodePromo extends StatelessWidget {
  const CodePromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kwbackColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.asset('assets/svg/cloud.svg'),
            SizedBox(
                height: 100,
                width: 130,
                child: Image.asset('assets/images/cloud.jpeg')),
            SizedBox(
              height: 10,
            ),
            Text(
              'You don’t have any promo code yet. Start creating new one.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 170,
              height: 32,
              child: OutlinedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.kPurpleColor)),
                onPressed: () {},
                child: Text(
                  'Create a Promo Code',
                  style: TextStyle(color: AppColors.kwhiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
