import 'package:flutter/material.dart';

class CreateMenuDialog extends StatelessWidget {
  final BuildContext context;
  final String option;

  const CreateMenuDialog({
    required this.context,
    required this.option,
  });

  void showCreateMenuDialog() {
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
    return GestureDetector(
      onTap: showCreateMenuDialog,
      child: Container(
          // Your widget code
          ),
    );
  }
}
