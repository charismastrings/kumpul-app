import 'package:flutter/material.dart';

class JoinMeetingPage extends StatelessWidget {
  const JoinMeetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: const Text(
          "Join Meeting",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(height: 20),
          TextField(
            maxLines: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              // fillColor: Colors.grey,
              // filled: true,
              // border: InputBorder.none,
              hintText: "Room Id",
            ),
          ),
        ],
      ),
    );
  }
}
