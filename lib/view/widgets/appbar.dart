part of 'pack_widgets.dart';

class AppBarWelcome extends StatelessWidget {
  const AppBarWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSizeApp(context).width,
      height: 40,
      color: Color.fromARGB(255, 255, 229, 195),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.circleExclamation,
            size: 18,
            color: Colors.orangeAccent,
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
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 16, 87, 209)),
                ),
                onPressed: () {},
                child: Text(
                  "UPGRADE",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )),
          ),
        ],
      ),
    );
  }
}
