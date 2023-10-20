import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 34),
          child: Text('DEG', style: Theme.of(context).textTheme.bodyLarge),
        ),
        const SizedBox(width: 20),
      ],
      // leading: IconButton(
      //   onPressed: () {
      //     // ThemeService().switchTheme();
      //   },
      // // icon: Icon(
      //   // ThemeService().theme == ThemeMode.dark
      //       ? Icons.dark_mode
      //       : Icons.light_mode,
      //   color: Colors.green,
      //   size: 30,
      // ),
      // ),
    );
  }
}
