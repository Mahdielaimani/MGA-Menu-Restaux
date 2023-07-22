part of 'pack_pages.dart';

class ListMenu extends StatelessWidget {
  ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);

    return Scaffold(
      backgroundColor: AppColors.cgreyColor,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context, builder: (builder) => const DialogAddMenu());
        },
      ),
      body: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          ///STATE LOADING
          if (state is LoadingMenuState) {
            return const Center(
              child: CircularProgressIndicator(),
            );

            ///STATE FAILED ( GET MESSAGE )
          } else if (state is FailedMenuState) {
            return Center(child: Text(state.message.toString()));

            /// STATE SUCCESS ( GET LIST MENU )
          } else if (state is SuccessMenuState) {
            final list = state.listMenu;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: getSizeApp(context).width,
                      height: 160,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15, bottom: 3, top: 5, right: 15),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
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
                                            list[i].name,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Switch(
                                                  value: list[i].status,
                                                  onChanged: (value) {
                                                    context
                                                        .read<MenuBloc>()
                                                        .add(UpdateMenuEvent(
                                                            status: value,
                                                            name:
                                                                list[i].name));
                                                  },
                                                ),
                                                Row(
                                                  children: [
                                                    OutlinedButton(
                                                        style: ButtonStyle(
                                                            backgroundColor:
                                                                MaterialStatePropertyAll(
                                                                    AppColors
                                                                        .purpleColor)),
                                                        onPressed: () {
                                                          router.pushNamed(
                                                              'scratchMenuscreen');
                                                        },
                                                        child: Text(
                                                          'Edit Menu',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .whiteColor),
                                                        )),
                                                    IconButton(
                                                      hoverColor:
                                                          AppColors.transpColor,
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.settings,
                                                        color:
                                                            AppColors.greyColor,
                                                      ),
                                                      iconSize: 18,
                                                      color: Colors.transparent,
                                                      highlightColor:
                                                          AppColors.transpColor,
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
                                          list[i].description,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Last updated on $formattedDate',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.greyColor,
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Card(
                                            elevation: 0,
                                            color: AppColors.greyColor,
                                            child: Text('Dine-in'),
                                          ),
                                          Card(
                                              elevation: 0,
                                              color: AppColors.greyColor,
                                              child: Text('QR Delivery')),
                                          Card(
                                              elevation: 0,
                                              color: AppColors.greyColor,
                                              child: Text('Pick-Up')),
                                          Card(
                                              elevation: 0,
                                              color: AppColors.greyColor,
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
                    ),
                  ],
                );
              },
            );
          }

          /// NO STATE
          return Container(
              color: AppColors.wbackColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SvgPicture.asset('assets/svg/cloud.svg'),
                    SizedBox(
                        height: 100,
                        width: 130,
                        child: Image.asset('assets/images/cloud.jpeg')),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'You don’t have any menu yet. Start creating one.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 150,
                      height: 32,
                      child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                AppColors.purpleColor)),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (builder) => const DialogAddMenu());
                        },
                        child: Text(
                          'Create a Menu',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
