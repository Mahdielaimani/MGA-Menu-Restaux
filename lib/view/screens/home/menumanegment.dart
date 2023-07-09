part of '../packages_screens.dart';

class MenuManagement extends StatefulWidget {
  @override
  _MenuManagementState createState() => _MenuManagementState();
}

class _MenuManagementState extends State<MenuManagement> {
  List<Widget> cards = [TranslationCenter()];

  void showCreateMenuDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('How would you like to setup your menu?'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Remember you can manage it anytime.'),
              SizedBox(height: 16),
              Card(
                child: ListTile(
                  title: Text('Create a sample menu'),
                  subtitle: Text('Start with a pre-built menu.'),
                  onTap: () {
                    Navigator.pop(context);
                    setState(() {
                      cards.add(MenuItem());
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCardBloc>(
      create: (context) => MenuCardBloc(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: getSizeApp(context).width,
          child: Column(
            children: [
              Container(
                width: 1264,
                height: 113,
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Menu Management',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Navigate to Menus page
                                  },
                                  child: Text('Menus'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('modifersscreen');
                                  },
                                  child: Text('Modifiers'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('archivescreen');
                                  },
                                  child: Text('Archive'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('promocodesscreen');
                                  },
                                  child: Text('Promo Codes'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('promotionsscreen');
                                  },
                                  child: Text('In-app Promotionsscreen'),
                                ),
                              ],
                            ),
                            SizedBox(width: 50),
                            Row(
                              children: [
                                OutlinedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  onPressed: () {
                                    showCreateMenuDialog(context);
                                  },
                                  child: Text(
                                    'Improve Menu',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.deepPurple)),
                                  onPressed: () {
                                    showCreateMenuDialog(context);
                                  },
                                  child: Text(
                                    'Create Menu',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: cards,
                ),
                // list of cards
              ),
            ],
          ),
        ),
      ),
    );
  }
}
