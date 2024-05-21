part of 'AddCreditImports.dart';

class AddCredit extends StatefulWidget {
  const AddCredit({super.key});

  @override
  State<AddCredit> createState() => _AddCreditState();
}

class _AddCreditState extends State<AddCredit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "إضافة رصيد",
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: const SingleChildScrollView(
          child: BuildAddField(),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            BuildPaymentButton(),
          ],
        ),
      ),
    );
  }
}
