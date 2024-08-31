import 'package:flutter/material.dart';
import 'package:kumpul_try/auth/login_or_register.dart';
import 'package:kumpul_try/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kumpul Meeting App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      // home: Scaffold(
      //   body: Stack(
      //     children: [
      //       DrawerPage(),
      //       LoginOrRegister(),
      //     ],
      //   ),
      // ),
      home: const LoginOrRegister(),
    );
  }
}
