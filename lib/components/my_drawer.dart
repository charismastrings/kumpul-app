import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 40, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Icon(
                        Icons.person,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'iamCloud',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Column(
              children: <Widget>[
                NewRow(
                  text: 'Settings',
                  icon: Icons.error_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Profile',
                  icon: Icons.person_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Messages',
                  icon: Icons.chat_bubble_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Saved',
                  icon: Icons.bookmark_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Favorites',
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  height: 20,
                ),
                NewRow(
                  text: 'Hint',
                  icon: Icons.lightbulb_outline,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Log out',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const NewRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
