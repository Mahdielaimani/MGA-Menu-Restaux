import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_restaux/core/function/functions.dart';
import 'package:menu_restaux/view/widgets/menuitem_card.dart';
import '../../../controller/bloc/menu_bloc.dart';
import '../../../routes.dart';

class MenuManagement extends StatefulWidget {
  @override
  _MenuManagementState createState() => _MenuManagementState();
}

class _MenuManagementState extends State<MenuManagement> {
  List<Widget> cards = [];

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
                    Navigator.pop(context); // Close the dialog
                    setState(() {
                      cards.add(MenuItem()); // Add a new card to the list
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
                                    // Navigate to Modifiers page
                                    router.pushNamed('modifersscreen');
                                  },
                                  child: Text('Modifiers'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Navigate to Archive page
                                    router.pushNamed('archivescreen');
                                  },
                                  child: Text('Archive'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Navigate to Promo Codes page
                                    router.pushNamed('promocodesscreen');
                                  },
                                  child: Text('Promo Codes'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Navigate to In-app Promotions page
                                    router.pushNamed('promotionsscreen');
                                  },
                                  child: Text('In-app Promotionsscreen'),
                                ),
                              ],
                            ),
                            SizedBox(width: 50), // Adjust the width as needed
                            Row(
                              children: [
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
              Container(
                child: Column(
                  children: cards, // Render the list of cards
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
