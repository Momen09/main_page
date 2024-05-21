import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:main_page/Ui/Home/tabs/wallet/WalletImports.dart';

import 'Ui/Home/HomeImports.dart';
import 'general/localization/SetLocalization.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      localizationsDelegates: [
        SetLocalization.localizationsDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale("ar"),
      home: Wallet(),
    );
  }
}
