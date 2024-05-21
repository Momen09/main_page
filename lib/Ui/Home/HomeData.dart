part of 'HomeImports.dart';

class HomeData {
  final GenericBloc<int> tabsCubit = GenericBloc(0);
  final GlobalKey scaffoldKey = GlobalKey();
  List<HomeModel> listHome = [];
  List<Widget> viewsList = [];

  void changePage(int index) {
    tabsCubit.onUpdateData(index);
  }

  void initData(BuildContext context, int index) {
    tabsCubit.onUpdateData(index);
    listHome.add(HomeModel(
        title: "الرئيسية", activeImg: Res.home, unActiveImg: Res.home));
    listHome.add(HomeModel(
        title: "المحفظة",
        activeImg: Res.wallet,
        unActiveImg: Res.wallet));
    listHome.add(HomeModel(
        title: "بيانات الطالب", activeImg: Res.account, unActiveImg: Res.account));

    viewsList = [
      const MainHome(),
      const Wallet(),
      const Account(),
    ];
  }
}
