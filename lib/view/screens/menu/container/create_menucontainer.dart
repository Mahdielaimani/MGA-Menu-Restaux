import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/blocs/menu/menu_bloc.dart';
import '../../../../core/logic/blocs/menu/menu_event.dart';

class CreateMenuContainer extends StatefulWidget {
  final Function(BuildContext) hideCreateMenuContainer;

  const CreateMenuContainer({required this.hideCreateMenuContainer, Key? key})
      : super(key: key);

  @override
  State<CreateMenuContainer> createState() => CreateMenuContainerState();
}

class CreateMenuContainerState extends State<CreateMenuContainer> {
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
    return Container(
      color: Colors.white,
      width: 500,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      widget.hideCreateMenuContainer(context);
                    },
                  ),
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text('Overview'),
                  SizedBox(width: 5),
                  Text('Detail'),
                ],
              ),
              SizedBox(height: 16),
              Text('Name'),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Menu',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 131, 68, 248)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Description'),
              TextField(
                controller: description,
                decoration: InputDecoration(
                  hintText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 131, 68, 248)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Note'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'réduction de 30% pour les gens qui vont ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 131, 68, 248)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      widget.hideCreateMenuContainer(context);
                    },
                    child: Text('Cancel'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      context.read<MenuBloc>().add(CreateMenuEvent(
                            name: name.text,
                            description: description.text,
                            status: status,
                          ));
                      Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
