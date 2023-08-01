part of 'pack_components.dart';

class CardScratch extends StatelessWidget {
  const CardScratch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(
          color: const Color.fromARGB(255, 231, 224, 224),
          height: 1,
        ),
        Container(
          color: Colors.white,
          width: MediaQuery.sizeOf(context).width,
          height: 72,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Menu',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(
              flex: 2,
            ),
            Icon(Icons.menu_book_outlined),
            SizedBox(
              width: 7,
            ),
            Text(
              'Leran More',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              width: 20,
            ),
          ]),
        ),
      ],
    );
  }
}
