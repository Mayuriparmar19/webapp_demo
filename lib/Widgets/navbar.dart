import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webapp_demo/Utils/constants.dart';
import '../Utils/colors.dart';
import '../Utils/styles.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) =>mobileNavBar(context),
      desktop:(BuildContext context) => deskTopNavBar(context),
      tablet: (BuildContext context ) => tabNavBAr(context),
      watch: (BuildContext context) => watchNavBar(context),
      // mobile: mobileNavBar(),
      // desktop: deskTopNavBar(),
    );
  }
}
Widget watchNavBar(BuildContext context) {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
      height: 16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Icon(Icons.menu,size: 12,), navLogo()],
      ),
    ),
  );
}
Widget mobileNavBar(BuildContext context) {
  return SafeArea(
    child: Container(

      margin: const EdgeInsets.symmetric(horizontal: 20,),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Icon(Icons.menu), navLogo()],
      ),
    ),
  );
}
Widget tabNavBAr(BuildContext context)
{
   return SafeArea(
     child: Container(
          margin:const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
       height: 70,
       child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
         navLogo(),
         Row(
           children: [

             navButton('Features'),
             navButton('About Us'),
             navButton('Pricing'),
             navButton('Feedback')
           ],
         ),
         SizedBox(
           height: 45,
           child: ElevatedButton(
               style: borderedButtonStyle,
               onPressed: () {},
               child: Text(
                 'Request a Demo',
                 style: TextStyle(color: AppColors.primary),
               )),
         )
       ],
     ),
     ),
   );
}
Widget deskTopNavBar(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback')
          ],
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              )),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child:
          Text(text, style: const TextStyle(color: Colors.black, fontSize: 18))));
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}