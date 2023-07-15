part of '../../packages_screens.dart';

class ScratchMenu extends StatefulWidget {
  const ScratchMenu({Key? key}) : super(key: key);

  @override
  _ScratchMenuState createState() => _ScratchMenuState();
}

class _ScratchMenuState extends State<ScratchMenu>
    with SingleTickerProviderStateMixin {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  AnimationController? _animationController;
  bool _isSectionContainerVisible = false;

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
  }

  void hideSectionContainer(BuildContext context) {
    _animationController?.reverse().then((_) {
      setState(() {
        _isSectionContainerVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 400;

          var $index;
          return Scaffold(
            drawer: SideMenuBar(
              controller: _controller,
            ),
            body: Stack(children: [
              SingleChildScrollView(
                child: Ink(
                  width: getSizeApp(context).width,
                  height: getSizeApp(context).height,
                  color: Colors.white,
                  child: Row(
                    children: [
                      if (!isSmallScreen) SideMenuBar(controller: _controller),
                      Expanded(
                        child: Container(
                          color: Color.fromARGB(245, 245, 245, 245),
                          child: Column(
                            children: [
                              const AppBarWelcome(),
                              TopCardIcons(),
                              CardScratch(),
                              SizedBox(
                                height: 20,
                              ),
                              UpgradeCenter(),
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    width: 811,
                                    height: 48,
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                      showSectionContainer(
                                                          context);
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text('Section'),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(8.0),
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
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add)),
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Add',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
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
            ]),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                FontAwesomeIcons.solidCommentDots,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
