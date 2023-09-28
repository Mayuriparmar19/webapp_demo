import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp_demo/Utils/colors.dart';
import '../../Utils/constants.dart';

class Containers2 extends StatefulWidget {
  const Containers2({
    super.key,
  });

  @override
  State<Containers2> createState() => _Containers2State();
}

class _Containers2State extends State<Containers2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer2(context),
      desktop: (BuildContext context) => desktopContainer2(context),
    );
  }

  Widget desktopContainer2(BuildContext context) {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.buttonColor),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector))),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1))),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(dashBoard))),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                comLogo(fb),
                comLogo(google),
                comLogo(cocaCola),
                comLogo(samsung),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget mobileContainer2(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 195,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dashBoard), fit: BoxFit.contain)),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                comLogo(fb),
                comLogo(google),
                comLogo(cocaCola),
                comLogo(samsung)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget comLogo(String image) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
