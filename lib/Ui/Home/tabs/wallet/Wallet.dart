part of 'WalletImports.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final WalletData walletData = WalletData();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "المحفظة",
            style: TextStyle(
                color: MyColors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () =>
                walletData.showCreditCubit.onUpdateData(true),
            child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: walletData.showCreditCubit,
                builder: (context, state) {
                  if (state.data == false) {
                    return const Column(
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        BuildAddCredit(),
                      ],
                    );
                  } else {
                    return const BuildShowCredit();
                  }
                }),
          ),
        ],
      ),
    );
  }
}
