part of 'AddCreditWidgetsImports.dart';

class BuildPaymentButton extends StatelessWidget {
  const BuildPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
          "دفع",
          style: TextStyle(
              color: MyColors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
