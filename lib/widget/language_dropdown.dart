import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  final Function() onTap;
  const LanguageDropdown({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DropdownButton(
        // icon: const Icon(Icons.language),
        items: const [
          DropdownMenuItem(
            value: Locale('en'),
            child: Text('English'),
          ),
          DropdownMenuItem(
            value: Locale('ar'),
            child: Text('العربية'),
          ),
        ],
        onChanged: (Locale? value) {},
      ),
    );
  }
}
