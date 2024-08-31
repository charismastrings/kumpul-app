import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  late final WebViewController controller; // Flag to handle loading state

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://kumpul.vercel.app'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(''),
      // ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
