part of 'pack_widgets.dart';

class MenuItem extends StatefulWidget {
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isActive = true;

  void toggleCardStatus() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);

    return Container(
      height: 150,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: Text(
                            isActive ? 'Live' : 'Inactive',
                            style: TextStyle(
                              fontSize: 15,
                              color: isActive ? Colors.green : Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                isActive
                                    ? Icons.toggle_on_outlined
                                    : Icons.toggle_off_outlined,
                                color: isActive ? Colors.green : Colors.grey,
                              ),
                              iconSize: 45,
                              onPressed: toggleCardStatus,
                            ),
                            OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.deepPurple)),
                                onPressed: () {},
                                child: Text(
                                  'Edit Menu',
                                  style: TextStyle(color: Colors.white),
                                )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.grey,
                              ),
                              iconSize: 18,
                              color: Colors.transparent,
                              highlightColor: Colors.transparent,
                              autofocus: false,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Last updated on $formattedDate',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              Row(
                children: const [
                  Card(
                    elevation: 0,
                    color: Color.fromARGB(250, 250, 250, 250),
                    child: Text('Dine-in'),
                  ),
                  Card(
                      elevation: 0,
                      color: Color.fromARGB(250, 250, 250, 250),
                      child: Text('QR Delivery')),
                  Card(
                      elevation: 0,
                      color: Color.fromARGB(250, 250, 250, 250),
                      child: Text('Pick-Up')),
                  Card(
                      elevation: 0,
                      color: Color.fromARGB(250, 250, 250, 250),
                      child: Text('Tablet')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
