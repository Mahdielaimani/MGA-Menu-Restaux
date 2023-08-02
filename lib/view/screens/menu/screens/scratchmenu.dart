part of '../../packages_screens.dart';

// Your other imports...

class ScratchMenuScreen extends StatefulWidget {
  ScratchMenuScreen({Key? key}) : super(key: key);

  @override
  _ScratchMenuScreenState createState() => _ScratchMenuScreenState();
}

class _ScratchMenuScreenState extends State<ScratchMenuScreen>
    with SingleTickerProviderStateMixin {
  List<Map<String, String>> sectionList = [];
  bool isActive = true;

  // Other variables...
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: AppColors.whiteColor,
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
                        color: AppColors.wbackColor,
                        child: Column(
                          children: [
                            AppBarWelcome(),
                            TopCardIcons(),
                            CardScratch(),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ResponsiveVisibility(
                                    hiddenWhen: isMobileTablet,
                                    child: Container(
                                      width: 150,
                                      height: 365,
                                      color: AppColors.whiteColor,
                                      child: const Column(children: [
                                        Row(
                                          children: [
                                            Text('Sections'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(AppIcons.add)
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
                                                    color:
                                                        AppColors.purpleColor)),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Active',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.greenColor)),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Inactive',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.greyColor)),
                                          ],
                                        )
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
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
                                            color: AppColors.whiteColor,
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
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(
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
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child:
                                                                  Text('Item'),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Add',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.blackColor,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: sectionList.length,
                                          separatorBuilder: (context, index) =>
                                              SizedBox(height: 8),
                                          itemBuilder: (context, index) {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Container(
                                                height: 48,
                                                color: AppColors.whiteColor,
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(children: [
                                                        SizedBox(width: 10),
                                                        Icon(
                                                          Icons
                                                              .table_rows_rounded,
                                                          size: 18,
                                                        ),
                                                        SizedBox(width: 10),
                                                        Text(
                                                          '${sectionList[index]['name']}',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .blackColor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
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
                            begin: Offset(1.0, 0.0),
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
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
