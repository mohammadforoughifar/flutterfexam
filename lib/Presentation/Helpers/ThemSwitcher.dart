import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfexam/Provider/THemProvider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themProvider=Provider.of<ThemeProvider>(context);
    var themeIcon=Icon(themProvider.isDarkMode ? CupertinoIcons.moon_fill : CupertinoIcons.sun_max_fill);


    return IconButton(
        onPressed: (){
          themProvider.toggleThem();
        },
        icon:themeIcon);
  }
}



