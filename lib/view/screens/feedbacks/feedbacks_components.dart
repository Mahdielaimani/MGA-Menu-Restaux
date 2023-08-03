part of '../../../../packages/packages.dart';

class CardFeedbacks extends StatefulWidget {
  const CardFeedbacks({super.key});

  @override
  State<CardFeedbacks> createState() => _CardFeedbacksState();
}

class _CardFeedbacksState extends State<CardFeedbacks>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: context.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: AppColors.kwhiteColor,
            width: context.width,
            height: 113,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    color: AppColors.kdividerColor,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Feedbacks',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: TabBar(
                        indicatorWeight: context.width,
                        labelColor: AppColors.kPurpleColor,
                        unselectedLabelColor: AppColors.kblackColor,
                        isScrollable: true,
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        tabs: const [
                          Tab(text: 'Results'),
                          Tab(text: 'Forms'),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 200.0,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type Article Title",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                child: OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.kPurpleColor),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Export',
                    style: TextStyle(color: AppColors.kwhiteColor),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
        ]),
      ),
    );
  }
}
