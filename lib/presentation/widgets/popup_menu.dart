import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_l10n/bloc/cubit/language_cubit.dart';

enum AppLanguage { lan_az, lan_en, lan_tr }

class MyPopupMenu extends StatelessWidget {
  const MyPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<AppLanguage>(
      onSelected: (AppLanguage result) {
        String? locale;
        if (result == AppLanguage.lan_az) locale = 'az';
        if (result == AppLanguage.lan_en) locale = 'en';
        if (result == AppLanguage.lan_tr) locale = 'tr';

        context.read<LanguageCubit>().changeLanguage(locale!);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<AppLanguage>>[
        const PopupMenuItem<AppLanguage>(
          value: AppLanguage.lan_en,
          child: Text('EN'),
        ),
        const PopupMenuItem<AppLanguage>(
          value: AppLanguage.lan_az,
          child: Text('AZ'),
        ),
        const PopupMenuItem<AppLanguage>(
          value: AppLanguage.lan_tr,
          child: Text('TR'),
        ),
      ],
    );
  }
}
