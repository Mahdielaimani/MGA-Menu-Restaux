import 'package:flutter/material.dart';

import '../../localization/trasnslate.dart';
import '../../routes.dart';
import 'pack_widgets.dart';

class DialogMenu extends StatefulWidget {
  const DialogMenu({super.key});

  @override
  State<DialogMenu> createState() => _DialogMenuState();
}

class _DialogMenuState extends State<DialogMenu> {
  List<Widget> cards = [TranslationCenter()];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('How would you like to setup your menu?'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Let’s set up your menu, remember you can manage it anytime.'),
          SizedBox(height: 16),
          Card(
              elevation: 7,
              child: Column(
                children: [
                  Icon(
                    Icons.stacked_line_chart_outlined,
                    color: Colors.deepPurple,
                  ),
                  ListTile(
                    title: Text('Start from scratch'),
                    subtitle: Text('Start with an empty menu.'),
                    onTap: () {
                      router.pushNamed('scratchmenuscreen');

                      Navigator.pop(context);
                      setState(() {
                        cards.add(MenuItem());
                      });
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
