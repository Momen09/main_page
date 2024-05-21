part of 'AddCreditWidgetsImports.dart';

class BuildAddField extends StatelessWidget {
  const BuildAddField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: MyColors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "المبلغ",
            style: TextStyle(
              color: MyColors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              decoration: BoxDecoration(
                color: MyColors.textBg,
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
