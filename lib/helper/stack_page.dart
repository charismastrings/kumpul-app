import 'package:flutter/material.dart';
import 'package:kumpul_try/components/my_drawer.dart';
import 'package:kumpul_try/pages/home_page.dart';
import 'package:kumpul_try/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kumpul Meeting App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const Scaffold(
        body: Stack(
          children: [MyDrawer(), HomePage()],
        ),
      ),
      // home: LoginOrRegister(),
    );
  }
}
