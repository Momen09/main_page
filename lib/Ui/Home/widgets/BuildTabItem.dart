part of 'HomeWidgetImports.dart';

class BuildTabItem extends StatelessWidget {
  final int index;
  final bool isActive;
  final HomeData mainHomeData;

  const BuildTabItem(
      {super.key,
      required this.index,
      required this.isActive,
      required this.mainHomeData});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isActive
                ? mainHomeData.listHome.elementAt(index).activeImg!
                : mainHomeData.listHome.elementAt(index).unActiveImg!,
            width: 20,
            height: 20,
            color: isActive ? MyColors.primary : MyColors.primary,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              mainHomeData.listHome.elementAt(index).title!,
              style: TextStyle(
                  color: isActive ? MyColors.primary : MyColors.primary,
                  fontSize: 12,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
