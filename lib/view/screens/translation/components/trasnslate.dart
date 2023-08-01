part of '../../packages_screens.dart';

class TranslationCenter extends StatelessWidget {
  const TranslationCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.noteColor,
          border: Border.all(color: AppColors.purpleColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            const Icon(
              FontAwesomeIcons.circleExclamation,
              color: AppColors.purpleColor,
              size: 16,
            ),
            const SizedBox(width: 10),
            const Text(
              'You can translate your menu in multiple languages with ',
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Translation Center.",
                style: TextStyle(
                  color: AppColors.purpleColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
