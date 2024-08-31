import 'package:flutter/material.dart';

import '../widget/setting_switch.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool news = false;
  bool activity = true;
  bool newsletter = false;
  bool appUpdates = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: const Text(
          "Notification",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingSwitch(
                title: "News For You",
                icon: Icons.newspaper,
                bgColor: Colors.blue.shade200,
                iconColor: Colors.white,
                value: news,
                onTap: (value) {
                  setState(() {
                    news = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Account Activity",
                icon: Icons.person,
                bgColor: Colors.orange.shade200,
                iconColor: Colors.white,
                value: activity,
                onTap: (value) {
                  setState(() {
                    activity = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Newsletter",
                icon: Icons.newspaper,
                bgColor: Colors.pink.shade200,
                iconColor: Colors.white,
                value: newsletter,
                onTap: (value) {
                  setState(() {
                    newsletter = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "App Updates",
                icon: Icons.update,
                bgColor: Colors.green.shade200,
                iconColor: Colors.white,
                value: appUpdates,
                onTap: (value) {
                  setState(() {
                    appUpdates = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
