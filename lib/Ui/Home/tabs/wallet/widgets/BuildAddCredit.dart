part of 'WalletWidgetsImports.dart';

class BuildAddCredit extends StatelessWidget {
  const BuildAddCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          Image.asset(
            Res.credit,
            width: 70,
            height: 70,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "لا يوجد رصيد في المحفظة",
            style: TextStyle(
                color: MyColors.secondary,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddCredit()));
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [MyColors.blue1, MyColors.blue2],
                ),
              ),
              child: Text(
                "إضافة رصيد",
                style: TextStyle(
                    color: MyColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
