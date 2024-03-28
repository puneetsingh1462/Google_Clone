import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/responsive_layout/widgets/mobile/mobile_fotter.dart';
import 'package:googleclone/responsive_layout/widgets/search.dart';
import 'package:googleclone/responsive_layout/widgets/translation_button.dart';
import 'package:googleclone/responsive_layout/widgets/web/search_button.dart';

class Mobilescreen extends StatelessWidget {
  const Mobilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            )),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                  labelColor: blueColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: blueColor,
                  tabs: [
                    Tab(
                      text: 'ALL',
                    ),
                    Tab(
                      text: 'IMAGES',
                    )
                  ])),
        ),
        actions: [
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
            SizedBox(height: size.height * 0.25),
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
                Mfotter(),
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}
