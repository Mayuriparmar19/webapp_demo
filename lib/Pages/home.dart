import 'package:flutter/material.dart';
import 'package:webapp_demo/Pages/Containers/container2.dart';
import 'package:webapp_demo/Pages/Containers/container3.dart';
import 'package:webapp_demo/Pages/Containers/container5.dart';
import 'package:webapp_demo/Widgets/navbar.dart';

import '../Utils/constants.dart';
import 'Containers/container1.dart';
import 'Containers/container4.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:  const Column(
            children: [
            NaviBar(),
              Containers1(),
              Containers2(),
              Containers3(),
              Containers4(),
              Containers5()



            ],
          ),
        ),
      ),
    );
  }
}
