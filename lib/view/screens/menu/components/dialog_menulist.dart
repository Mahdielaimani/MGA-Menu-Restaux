import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/blocs/menu/menu_bloc.dart';
import '../../../../core/logic/blocs/menu/menu_event.dart';
import '../../../../core/constant/colors.dart';

class DialogAddMenu extends StatefulWidget {
  const DialogAddMenu({super.key});

  @override
  State<DialogAddMenu> createState() => _DialogAddMenuState();
}

class _DialogAddMenuState extends State<DialogAddMenu> {
  final name = TextEditingController();
  final description = TextEditingController();
  bool status = true;

  @override
  void dispose() {
    name.dispose();
    description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create Menu'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Name'),

          SizedBox(
            width: 500,
            height: 50,
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.kPurpleColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          SizedBox(height: 16),
          Text('Description'),

          SizedBox(
            width: 500,
            height: 50,
            child: TextField(
              controller: description,
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.kPurpleColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // Switch(
          //   value: status,
          //   onChanged: (value) {
          //     setState(() {
          //       status = value;
          //     });
          //   },
          // ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.read<MenuBloc>().add(CreateMenuEvent(
                  name: name.text,
                  description: description.text,
                  status: status,
                ));
            Navigator.pop(context);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
