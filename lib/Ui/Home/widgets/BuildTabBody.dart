part of 'HomeWidgetImports.dart';

class BuildTabBody extends StatelessWidget {
  final HomeData mainHomeData;

  const BuildTabBody({Key? key, required this.mainHomeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
      ),
      child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: mainHomeData.tabsCubit,
          builder: (context, state) {
            return AnimatedBottomNavigationBar.builder(
                gapLocation: GapLocation.none,
                backgroundColor: Colors.transparent,
                elevation: 0,
                height: 65,
                itemCount: 3,
                tabBuilder: (int index, bool isActive) {
                  return BuildTabItem(
                    index: index,
                    isActive: isActive,
                    mainHomeData: mainHomeData,
                  );
                },
                activeIndex: state.data,
                onTap: (index) => mainHomeData.changePage(index));
          }),
    );
  }
}
