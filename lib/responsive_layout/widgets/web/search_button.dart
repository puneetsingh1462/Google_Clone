import 'package:flutter/material.dart';
import 'package:googleclone/responsive_layout/widgets/web/search_button2.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(text: 'Google Search'),
            SizedBox(
              width: 20,
            ),
            Button(text: 'I\'m Luckey')
          ],
        )
      ],
    );
  }
}
