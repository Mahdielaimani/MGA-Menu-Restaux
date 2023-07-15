part of '../../packages_screens.dart';

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
        return DialogMenu();
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                width: getSizeApp(context).width,
                height: 113,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Divider(
                        color: const Color.fromARGB(255, 231, 224, 224),
                        height: 1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Menu Management',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 123,
                                height: 32,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    // showCreateMenuDialog(context);
                                  },
                                  child: Text(
                                    'Improve Menu',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 123,
                                height: 32,
                                child: OutlinedButton(
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
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Navigate to Menus page
                                  },
                                  child: Text(
                                    'Menus',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('modifersscreen');
                                  },
                                  child: Text(
                                    'Modifiers',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('archivescreen');
                                  },
                                  child: Text(
                                    'Archive',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('promocodesscreen');
                                  },
                                  child: Text(
                                    'Promo Codes',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    router.pushNamed('promotionsscreen');
                                  },
                                  child: Text(
                                    'In-app Promotionsscreen',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
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
