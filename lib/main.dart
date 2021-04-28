import 'package:eatbio_project/providers/theme_provider.dart';
import 'package:eatbio_project/utils/theme.dart';
import 'package:flutter/material.dart';
import 'pages/splash.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        )
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          transitionDuration: Duration(milliseconds: 750),
          defaultTransition: Transition.topLevel,
          home: SplashScreen(),
          // home: StackTutorial(),
          // home: HomeView(),
        ),
      ),
    );
  }
}
