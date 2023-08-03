part of '../../../../../packages/packages.dart';

class ItemContainer extends StatefulWidget {
  final Function(BuildContext) hideItemContainer;

  const ItemContainer({required this.hideItemContainer, Key? key})
      : super(key: key);

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
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
                      widget.hideItemContainer(context);
                    },
                  ),
                  Text(
                    'Add New Item',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('General Information'),
              SizedBox(height: 16),
              Text('Name'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Item Name',
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
                  hintText: 'Item Description',
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
              Text('Upload'),
              Text('Only .jpg, .jpeg and .png files are supported.'),
              SizedBox(height: 16),
              Text('Video'),
              SizedBox(height: 5),
              Text('Upload'),
              Text('Only .mp4 files are supported.'),
              Text(
                  'Recommended resolution is for landscape 1536x1024px, square 1536x1536px, or portrait 1536x2304 or bigger with a file size of less than 10MB.'),
              SizedBox(height: 16),
              Text('Price'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Price',
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
              Text('Calorie'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Calorie',
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
              Text('Price Options'),
              Text(
                  'Items can have price options according to their sizes, servings, etc. For more check Price Options'),
              SizedBox(height: 16),
              Text('Display the item'),
              Switch(
                value: true,
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              Text('Mark as Sold Out'),
              Text('New'),
              SizedBox(height: 16),
              Text('Section'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Section Name',
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
              Text('Labels'),
              Text('Select labels'),
              SizedBox(height: 16),
              Text('Ingredient Warnings'),
              Text('Select ingredient warnings'),
              SizedBox(height: 16),
              Text('Recommended Items'),
              Text('Type to search items'),
              SizedBox(height: 16),
              Text('Preparation Time'),
              TextField(
                decoration: InputDecoration(
                  hintText: '0',
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
              Text('min(s)'),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      widget.hideItemContainer(context);
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
