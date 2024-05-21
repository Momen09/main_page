part of 'HomeImports.dart';

class Home extends StatefulWidget {
  final int index;
  const Home({super.key, required this.index});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeData homeData = HomeData();

  @override
  void initState() {
    homeData.initData(context, widget.index);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (homeData.tabsCubit.state.data == 0) {
          await SystemNavigator.pop();
        }

        Future.delayed(const Duration(milliseconds: 200), () {
          homeData.tabsCubit.onUpdateData(0);
        });

        return homeData.tabsCubit.state.data == 0;
      },
      child: Scaffold(
        // backgroundColor: MyColors.,
        key: homeData.scaffoldKey,
        body: Column(
          children: [
            // BuildHeaderMainHome(mainHomeData: homeData),
            Expanded(
              child: BuildTabPages(mainHomeData: homeData),
            ),
          ],
        ),
        // bottomNavigationBar: BuildTabBody(mainHomeData: homeData),
      ),
    );
  }
}
