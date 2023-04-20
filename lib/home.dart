import 'package:flutter/material.dart';
import 'package:flutter_theme/themes/theme_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? _userName;
  bool isDark = false;

  _updateValue(value) {
    setState(() {
      _userName = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:
          (BuildContext context, ThemeModel themeNotifier, Widget? child) =>
              Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text(
            "Login",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          centerTitle: true,
          actions: [
            Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    isDark = value;
                    setState(() {
                      (themeNotifier.isDark)
                          ? themeNotifier.isDark = false
                          : themeNotifier.isDark = true;
                    });
                  });
                }),
          ],
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello There, ${_userName ?? ""}"),
                TextFormField(
                  onChanged: (value) {
                    _updateValue(value);
                  },
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_circle_rounded),
                    labelText: "What should I call you?",
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
