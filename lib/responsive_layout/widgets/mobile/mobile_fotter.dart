import 'package:flutter/material.dart';
import 'package:googleclone/responsive_layout/widgets/footer_text.dart';

class Mfotter extends StatelessWidget {
  const Mfotter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        ftext(title: 'About'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'Advertising'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'Bussiness'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'How Search Works'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'Privacy'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'Terms'),
        SizedBox(
          width: 10,
        ),
        ftext(title: 'Setting'),
      ],
    );
  }
}
