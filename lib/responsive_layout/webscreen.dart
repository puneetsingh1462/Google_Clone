import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/responsive_layout/widgets/search.dart';
import 'package:googleclone/responsive_layout/widgets/translation_button.dart';
import 'package:googleclone/responsive_layout/widgets/web/fotter.dart';
import 'package:googleclone/responsive_layout/widgets/web/search_button.dart';

class Webscreen extends StatelessWidget {
  const Webscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Gmail',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Images',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              )),
          const SizedBox(
            width: 5,
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: Colors.white,
              )),
          const SizedBox(width: 5),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xff1A73EB),
            child: const Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size * 0.25),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(
                      height: 18,
                    ),
                    SearchButton(),
                    SizedBox(
                      height: 18,
                    ),
                    Translationbutton(),
                  ],
                ),
                Webfotter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
