import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(AppLocalizations.of(context)!.welcomeTitle),
          ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // AppLocalizations.of(context)!.login,
                '',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Text(
                // AppLocalizations.of(context)!.signIn,
                '',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Text(
                // AppLocalizations.of(context)!.password,
                '',
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
