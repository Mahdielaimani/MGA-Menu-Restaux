part of '../packages_screens.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        width: getSizeApp(context).width,
        height: getSizeApp(context).height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
