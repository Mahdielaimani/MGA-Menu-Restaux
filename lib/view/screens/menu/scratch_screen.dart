<<<<<<< Updated upstream:lib/view/screens/menu/scratch_screen.dart
part of '../../../../packages/packages.dart';
=======
part of '../../packages_screens.dart';
>>>>>>> Stashed changes:lib/view/screens/menu/screens/scratchmenu.dart

class ScratchMenuScreen extends StatefulWidget {
  const ScratchMenuScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ScratchMenuScreenState createState() => _ScratchMenuScreenState();
}

class _ScratchMenuScreenState extends State<ScratchMenuScreen>
    with SingleTickerProviderStateMixin {
  List<Map<String, String>> sectionList = [];
  bool isActive = true;

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  AnimationController? _animationController;
  bool _isSectionContainerVisible = false;
  bool _isItemContainerVisible = false;
  double clipRRectWidth = 811;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  void onSaveSectionData(String name, String description, String note) {
    setState(() {
      Map<String, String> newSection = {
        'name': name,
        'description': description,
        'note': note,
      };
      sectionList.add(newSection);
    });
  }

  void toggleCardStatus(bool value) {
    setState(() {
      isActive = !isActive;
    });
  }

  void showSectionContainer(BuildContext context) {
    setState(() {
      _isSectionContainerVisible = true;
    });
    _animationController?.forward();
    _updateContentWidth();
  }

  void hideSectionContainer(BuildContext context) {
    _animationController?.reverse().then((_) {
      setState(() {
        _isSectionContainerVisible = false;
      });
      _updateContentWidth();
    });
  }

  void showItemContainer(BuildContext context) {
    setState(() {
      _isItemContainerVisible = true;
    });
    _animationController?.forward();
    _updateContentWidth();
  }

  void hideItemContainer(BuildContext context) {
    _animationController?.reverse().then((_) {
      setState(() {
        _isItemContainerVisible = false;
      });
      _updateContentWidth();
    });
  }

  void _updateContentWidth() {
    if (_isSectionContainerVisible || _isItemContainerVisible) {
      setState(() {
        clipRRectWidth = 460;
      });
    } else {
      setState(() {
        clipRRectWidth = 800;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Ink(
                width: context.width,
                height: context.height,
                color: AppColors.kwhiteColor,
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    ResponsiveVisibility(
                      visible: true,
                      hiddenWhen: isMobileTablet,
                      child: SideMenuBar(
                        controller: _controller,
                        onChange: (int page) {
                          _controller.selectIndex(page);
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: AppColors.kwbackColor,
                        child: Column(
                          children: [
                            AppBarWelcome(),
                            TopCardIcons(),
                            CardScratch(),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ResponsiveVisibility(
                                    hiddenWhen: isMobileTablet,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: 170,
                                        height: 365,
                                        padding: const EdgeInsets.all(15),
                                        color: AppColors.kwhiteColor,
                                        child: const Column(children: [
                                          Row(
                                            children: [
                                              Text('Sections'),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(AppIcons.kadd)
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text('All',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .kPurpleColor)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text('Active',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .kgreenColor)),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text('Inactive',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .kblackColor)),
                                            ],
                                          )
                                        ]),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Container(
                                            width: ResponsiveValue(
                                              context,
                                              defaultValue: clipRRectWidth,
                                              valueWhen: isMobileTabletSctratch,
                                            ).value,
                                            height: 48,
                                            color: AppColors.kwhiteColor,
                                            child: InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      content: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showSectionContainer(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: const Text(
                                                                  'Section'),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                              showItemContainer(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: const Text(
                                                                  'Item'),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
<<<<<<< Updated upstream:lib/view/screens/menu/scratch_screen.dart
                                              child: const Row(
                                                mainAxisSize: MainAxisSize.min,
=======
                                              child: Row(
>>>>>>> Stashed changes:lib/view/screens/menu/screens/scratchmenu.dart
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Add',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.kblackColor,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: sectionList.length,
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(height: 8),
                                          itemBuilder: (context, index) {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Container(
                                                height: 48,
                                                color: AppColors.kwhiteColor,
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(children: [
                                                        const SizedBox(
                                                            width: 10),
                                                        const Icon(
                                                          Icons
                                                              .table_rows_rounded,
                                                          size: 18,
                                                        ),
                                                        const SizedBox(
                                                            width: 10),
                                                        Text(
                                                          '${sectionList[index]['name']}',
                                                          style:
                                                              const TextStyle(
                                                            color: AppColors
                                                                .kblackColor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 20),
                                                      ]),
                                                      Row(
                                                        children: [
                                                          Switch(
                                                            value: isActive,
                                                            onChanged: (value) {
                                                              toggleCardStatus(
                                                                  value);
                                                            },
                                                            activeColor: Colors
                                                                .lightGreen,
                                                            inactiveThumbColor:
                                                                Colors.grey,
                                                            inactiveTrackColor:
                                                                Colors.grey
                                                                    .withOpacity(
                                                                        0.5),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _isSectionContainerVisible,
                      child: Positioned(
                        top: 0,
                        right: 0,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(CurvedAnimation(
                            parent: _animationController!,
                            curve: Curves.easeInOut,
                          )),
                          child: SectionContainer(
                            hideSectionContainer: hideSectionContainer,
                            onSaveSectionData: onSaveSectionData,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _isItemContainerVisible,
                      child: Positioned(
                        top: 0,
                        right: 0,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(CurvedAnimation(
                            parent: _animationController!,
                            curve: Curves.easeInOut,
                          )),
                          child: ItemContainer(
                            hideItemContainer: hideItemContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            FontAwesomeIcons.solidCommentDots,
            color: AppColors.kwhiteColor,
          ),
        ),
      ),
    );
  }
}
