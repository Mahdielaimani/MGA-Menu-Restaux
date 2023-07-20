part of 'pack_components.dart';

class UpgradeCenter extends StatelessWidget {
  const UpgradeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(330, 0, 330, 0),
      child: Expanded(
        child: Ink(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.noteColor,
            // color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
            border: Border.all(color: AppColors.purpleColor, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  const SizedBox(width: 10),
                  const Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: AppColors.purpleColor,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'You can only have 80 items with trial plan. ',
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Upgrade",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    " for more.",
                    style: TextStyle(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "10 items left",
                    style: TextStyle(
                      color: AppColors.purpleColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
