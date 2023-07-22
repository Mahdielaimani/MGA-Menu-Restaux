part of '../view/screens/menu/components/pack_components.dart';

class DialogMenu extends StatefulWidget {
  const DialogMenu({super.key});

  @override
  State<DialogMenu> createState() => _DialogMenuState();
}

class _DialogMenuState extends State<DialogMenu> {
  List<Widget> cards = [TranslationCenter()];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: getSizeApp(context).width * .6,
        constraints: const BoxConstraints(maxWidth: 700),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'How would you like to setup your menu?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's set up your menu, remember you can manage it anytime.",
              style: TextStyle(
                fontSize: 13,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: getSizeApp(context).width / 4,
              height: getSizeApp(context).height * .15,
              child: Row(
                children: [
                  CardCreateMenuItem(
                      title: "Start from scratch",
                      label: "Start with an empty menu.",
                      icon: FontAwesomeIcons.building,
                      onTap: () {
                        router.pushNamed('scratchMenuscreen');
                        Navigator.pop(context);

                        //
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
