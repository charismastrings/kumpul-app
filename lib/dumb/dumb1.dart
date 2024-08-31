import 'package:flutter/material.dart';
import 'package:kumpul_try/components/my_meeting_button.dart';
import 'package:kumpul_try/pages/join_meeting_page.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  double xOffset = 0;
  double yOffset = 0;

  bool isDrawOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawOpen ? -50 : 0),
      duration: const Duration(milliseconds: 200),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        // appBar: AppBar(
        //   leading: Container(
        //     child: isDrawOpen
        //         ? GestureDetector(
        //             child: Icon(Icons.arrow_back_ios),
        //             onTap: () {
        //               setState(() {
        //                 xOffset = 0;
        //                 yOffset = 0;
        //                 isDrawOpen = false;
        //               });
        //             },
        //           )
        //         : GestureDetector(
        //             child: Icon(Icons.menu),
        //             onTap: () {
        //               setState(() {
        //                 xOffset = 290;
        //                 yOffset = 80;
        //                 isDrawOpen = true;
        //               });
        //             },
        //           ),
        //   ),
        //   backgroundColor: Theme.of(context).colorScheme.onPrimary,
        //   centerTitle: true,
        //   title: const Text(
        //     "Meet & Chat",
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 30,
        //     ),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyMeetingButton(
                    bgColor: Colors.orange,
                    onTap: () {},
                    text: 'New Meeting',
                    icon: Icons.videocam,
                  ),
                  MyMeetingButton(
                    bgColor: Colors.deepPurple,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JoinMeetingPage(),
                        )),
                    text: 'Join Meeting',
                    icon: Icons.add_box_rounded,
                  ),
                  MyMeetingButton(
                    bgColor: Colors.deepPurple,
                    onTap: () {},
                    text: 'Schedule',
                    icon: Icons.calendar_today,
                  ),
                  MyMeetingButton(
                    bgColor: Colors.deepPurple,
                    onTap: () {},
                    text: 'Share Screen',
                    icon: Icons.arrow_upward_rounded,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
