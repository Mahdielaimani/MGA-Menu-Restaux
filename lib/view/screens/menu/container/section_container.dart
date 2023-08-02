part of '../components/pack_components.dart';

// ignore: must_be_immutable
class SectionContainer extends StatefulWidget {
  String? name;
  String? description;
  String? note;
  Image? image;
  final Function(BuildContext) hideSectionContainer;

  final void Function(
    String name,
    String description,
    String note,
  ) onSaveSectionData;

  SectionContainer({
    required this.hideSectionContainer,
    required this.onSaveSectionData, // Include the callback function in the constructor.
    this.name,
    this.description,
    this.note,
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<SectionContainer> createState() => _SectionContainerState();
}

class _SectionContainerState extends State<SectionContainer> {
  final nameController = TextEditingController();

  final descriptionController = TextEditingController();

  final noteController = TextEditingController();

  final imageController = TextEditingController();

  File? image;

  @override
  void initState() {
    super.initState();

    // Prepopulate the TextFields with existing data if available.
    nameController.text = widget.name ?? '';
    descriptionController.text = widget.description ?? '';
    noteController.text = widget.note ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
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
                      widget.hideSectionContainer(context);
                    },
                  ),
                  Text(
                    'Add New Section',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
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
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'couscous',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kPurpleColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kPurpleColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Description'),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText:
                      'une spécialité culinaire issue de la cuisine berbère',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kPurpleColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text('Note'),
              TextField(
                controller: noteController,
                decoration: InputDecoration(
                  hintText: 'réduction de 30% pour les gens qui vont ...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kPurpleColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Image'),
              if (image != null)
                kIsWeb
                    ? Image(
                        width: 200,
                        height: 200,
                        image: NetworkImage(image!.path),
                      )
                    : Image(
                        width: 200,
                        height: 200,
                        image: FileImage(image!),
                      ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.kPurpleColor)),
                      label: const Text(
                        'Upload',
                      ),
                      icon: const Icon(
                        Icons.image_outlined,
                      ),
                      onPressed: () async {
                        final file = await AppFunctions.pickImage(context);
                        //TODO: change image
                        if (file != null) {
                          setState(() {
                            image = File(file.path);
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      widget.hideSectionContainer(context);
                    },
                    child: Text('Cancel'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      widget.hideSectionContainer(context);

                      // Call the callback function with the entered name and description.
                      widget.onSaveSectionData(nameController.text,
                          descriptionController.text, noteController.text);
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
