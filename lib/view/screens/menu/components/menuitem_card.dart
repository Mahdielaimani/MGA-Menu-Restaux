part of 'pack_components.dart';

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
      width: getSizeApp(context).width,
      height: 164,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.drag_indicator,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
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
                                      fontSize: 17,
                                      color: isActive
                                          ? Colors.lightGreen
                                          : Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        isActive
                                            ? Icons.toggle_on
                                            : Icons.toggle_off,
                                        color: isActive
                                            ? Colors.lightGreen
                                            : Colors.grey,
                                      ),
                                      iconSize: 55,
                                      onPressed: toggleCardStatus,
                                    ),
                                    OutlinedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.deepPurple)),
                                        onPressed: () {},
                                        child: Text(
                                          'Edit Menu',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    IconButton(
                                      hoverColor: Colors.transparent,
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
                                    Icon(
                                      Icons.more_vert_outlined,
                                      size: 20,
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
                      const Row(
                        children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
