import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Function(BuildContext) hideSectionContainer;

  const SectionContainer({required this.hideSectionContainer, Key? key})
      : super(key: key);

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
                      hideSectionContainer(context);
                    },
                  ),
                  Text(
                    'Add New Section',
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
                decoration: InputDecoration(
                  hintText: 'couscous',
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
                decoration: InputDecoration(
                  hintText:
                      'une spécialité culinaire issue de la cuisine berbère',
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
              SizedBox(height: 16),
              Text('Image'),
              SizedBox(height: 5),
              SizedBox(height: 16),
              Text('Display the section'),
              Switch(
                value: true,
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              Text('Use as a sub-section'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type to search sections',
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
                      hideSectionContainer(context);
                    },
                    child: Text('Cancel'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
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
