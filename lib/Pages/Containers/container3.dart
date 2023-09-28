import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp_demo/Utils/constants.dart';

import 'common.dart';

class Containers3 extends StatefulWidget {
  const Containers3({super.key});

  @override
  State<Containers3> createState() => _Containers3State();
}

class _Containers3State extends State<Containers3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(context),
      desktop: (BuildContext context) => desktopContainer3(context),
    );
  }

  Widget desktopContainer3(BuildContext context) {
    return commonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }

  Widget mobileContainer3(BuildContext context) {
    return commonContainer(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
        illustration1,
        false);
  }
}
