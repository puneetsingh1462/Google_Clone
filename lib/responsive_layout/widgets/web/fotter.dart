import 'package:flutter/material.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/responsive_layout/widgets/footer_text.dart';

class Webfotter extends StatelessWidget {
  const Webfotter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: footerColor,
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                )
              ],
            ),
          )),
    );
  }
}
