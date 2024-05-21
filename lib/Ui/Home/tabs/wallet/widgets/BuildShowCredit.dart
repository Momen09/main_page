part of 'WalletWidgetsImports.dart';

class BuildShowCredit extends StatelessWidget {
  const BuildShowCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: MyColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                Res.walletcircle,
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "الرصيد المتاح",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "1750",
                        style: TextStyle(
                            color: MyColors.secondary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "جنيه",
                        style: TextStyle(
                            color: MyColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                Res.walletb,
                width: 24,
                height: 24,
              ),
              Text(
                "اضافة رصيد",
                style: TextStyle(
                    color: MyColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
