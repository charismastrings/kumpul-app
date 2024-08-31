import 'package:flutter/material.dart';
import 'package:kumpul_try/components/my_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // color: Theme.of(context).colorScheme.primary,
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawOpen ? -50 : 0),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius:
            isDrawOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          leading: Container(
            child: isDrawOpen
                ? GestureDetector(
                    child: const Icon(Icons.arrow_back_ios),
                    onTap: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        isDrawOpen = false;
                      });
                    },
                  )
                : GestureDetector(
                    child: const Icon(Icons.menu),
                    onTap: () {
                      setState(() {
                        xOffset = 290;
                        yOffset = 80;
                        isDrawOpen = true;
                      });
                    },
                  ),
          ),
          // backgroundColor: Theme.of(context).colorScheme.onPrimary,
          // centerTitle: true,
          // title: const Text(
          //   "Meet & Chat",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 30,
          //   ),
          // ),
        ),
        body: const MyNavigationBar(),
      ),
    );
  }
}
