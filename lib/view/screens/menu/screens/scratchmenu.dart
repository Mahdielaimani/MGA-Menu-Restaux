part of '../../packages_screens.dart';

class ScratchMenuScreen extends StatefulWidget {
  const ScratchMenuScreen({Key? key}) : super(key: key);

  @override
  _ScratchMenuScreenState createState() => _ScratchMenuScreenState();
}

class _ScratchMenuScreenState extends State<ScratchMenuScreen>
    with SingleTickerProviderStateMixin {
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
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Ink(
            width: getSizeApp(context).width,
            height: getSizeApp(context).height,
            color: AppColors.whiteColor,
            child: Expanded(
              child: Row(
                children: [
                  ResponsiveVisibility(
                      visible: true,
                      hiddenWhen: isMobileTablet,
                      child: SideMenuBar(controller: _controller)),
                  Expanded(
                    child: Container(
                      color: AppColors.wbackColor,
                      child: Column(
                        children: [
                          const AppBarWelcome(),
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
                                          Text('All'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Active'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Inactive'),
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // UpgradeCenter(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        width: ResponsiveValue(context,
                                                defaultValue: clipRRectWidth,
                                                valueWhen:
                                                    isMobileTabletSctratch)
                                            .value,
                                        height: 48,
                                        color: AppColors.whiteColor,
                                        child: InkWell(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              Text('Section'),
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
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text('Item'),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 10,
                                              ),
                                              // IconButton(
                                              //     onPressed: () {},
                                              //     icon: Icon(Icons.add)),
                                              Text(
                                                textAlign: TextAlign.start,
                                                'Add',
                                                style: TextStyle(
                                                  color: AppColors.blackColor,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
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
                          begin: Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: _animationController!,
                          curve: Curves.easeInOut,
                        )),
                        child: SectionContainer(
                            hideSectionContainer: hideSectionContainer),
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
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.solidCommentDots,
          color: AppColors.whiteColor,
        ),
      ),
    ));
  }
}
