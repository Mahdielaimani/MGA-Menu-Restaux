import 'package:flutter/material.dart';

class MenuManagement extends StatelessWidget {
  void _showCreateMenuDialog(BuildContext context, String option) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Let’s set up your menu'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Remember you can manage it anytime.'),
              SizedBox(height: 16),
              if (option == 'import')
                const Card(
                  child: ListTile(
                    title: Text('Import your menu'),
                    subtitle: Text(
                        'Download the sample sheet (Excel) and fill it with your items.'),
                  ),
                )
              else if (option == 'scratch')
                Card(
                  child: ListTile(
                    title: Text('Start from scratch'),
                    subtitle: Text('Start with an empty menu.'),
                  ),
                )
              else if (option == 'sample')
                const Card(
                  child: ListTile(
                    title: Text('Create a sample menu'),
                    subtitle: Text('Start with a pre-built menu.'),
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
    return Container(
      width: 1264,
      height: 113,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Menu Management',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Menus button logic
                        },
                        child: Text('Menus'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Modifiers button logic
                        },
                        child: Text('Modifiers'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Archive button logic
                        },
                        child: Text('Archive'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Promo Codes button logic
                        },
                        child: Text('Promo Codes'),
                      ),
                      TextButton(
                        onPressed: () {
                          // In-app Promotions button logic
                        },
                        child: Text('In-app Promotions'),
                      ),
                    ],
                  ),
                  SizedBox(width: 50), // Adjust the width as needed
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          _showCreateMenuDialog(context, 'import');
                        },
                        child: Text('Create Menu'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
